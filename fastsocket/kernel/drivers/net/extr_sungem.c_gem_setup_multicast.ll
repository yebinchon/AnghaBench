; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_setup_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_setup_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i8*, %struct.dev_mc_list* }

@IFF_ALLMULTI = common dso_local global i32 0, align 4
@MAC_HASH0 = common dso_local global i64 0, align 8
@MAC_RXCFG_HFE = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@MAC_RXCFG_PROM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gem*)* @gem_setup_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gem_setup_multicast(%struct.gem* %0) #0 {
  %2 = alloca %struct.gem*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [16 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.dev_mc_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.gem* %0, %struct.gem** %2, align 8
  store i32 0, i32* %3, align 4
  %10 = load %struct.gem*, %struct.gem** %2, align 8
  %11 = getelementptr inbounds %struct.gem, %struct.gem* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IFF_ALLMULTI, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.gem*, %struct.gem** %2, align 8
  %20 = getelementptr inbounds %struct.gem, %struct.gem* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 256
  br i1 %24, label %25, label %47

25:                                               ; preds = %18, %1
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %40, %25
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 16
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load %struct.gem*, %struct.gem** %2, align 8
  %31 = getelementptr inbounds %struct.gem, %struct.gem* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MAC_HASH0, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = shl i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = call i32 @writel(i32 65535, i64 %38)
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %26

43:                                               ; preds = %26
  %44 = load i32, i32* @MAC_RXCFG_HFE, align 4
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  br label %143

47:                                               ; preds = %18
  %48 = load %struct.gem*, %struct.gem** %2, align 8
  %49 = getelementptr inbounds %struct.gem, %struct.gem* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @IFF_PROMISC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load i32, i32* @MAC_RXCFG_PROM, align 4
  %58 = load i32, i32* %3, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %3, align 4
  br label %142

60:                                               ; preds = %47
  %61 = load %struct.gem*, %struct.gem** %2, align 8
  %62 = getelementptr inbounds %struct.gem, %struct.gem* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load %struct.dev_mc_list*, %struct.dev_mc_list** %64, align 8
  store %struct.dev_mc_list* %65, %struct.dev_mc_list** %7, align 8
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %73, %60
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 16
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %71
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %66

76:                                               ; preds = %66
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %113, %76
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.gem*, %struct.gem** %2, align 8
  %80 = getelementptr inbounds %struct.gem, %struct.gem* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %78, %83
  br i1 %84, label %85, label %116

85:                                               ; preds = %77
  %86 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %87 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %9, align 8
  %89 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %90 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %89, i32 0, i32 1
  %91 = load %struct.dev_mc_list*, %struct.dev_mc_list** %90, align 8
  store %struct.dev_mc_list* %91, %struct.dev_mc_list** %7, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = and i32 %94, 1
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %85
  br label %113

98:                                               ; preds = %85
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @ether_crc_le(i32 6, i8* %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = ashr i32 %101, 24
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = and i32 %103, 15
  %105 = sub nsw i32 15, %104
  %106 = shl i32 1, %105
  %107 = load i32, i32* %6, align 4
  %108 = ashr i32 %107, 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %106
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %98, %97
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %77

116:                                              ; preds = %77
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %135, %116
  %118 = load i32, i32* %8, align 4
  %119 = icmp slt i32 %118, 16
  br i1 %119, label %120, label %138

120:                                              ; preds = %117
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.gem*, %struct.gem** %2, align 8
  %126 = getelementptr inbounds %struct.gem, %struct.gem* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @MAC_HASH0, align 8
  %129 = add nsw i64 %127, %128
  %130 = load i32, i32* %8, align 4
  %131 = shl i32 %130, 2
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %129, %132
  %134 = call i32 @writel(i32 %124, i64 %133)
  br label %135

135:                                              ; preds = %120
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  br label %117

138:                                              ; preds = %117
  %139 = load i32, i32* @MAC_RXCFG_HFE, align 4
  %140 = load i32, i32* %3, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %138, %56
  br label %143

143:                                              ; preds = %142, %43
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @ether_crc_le(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
