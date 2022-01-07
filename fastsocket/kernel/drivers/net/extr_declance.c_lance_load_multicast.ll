; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_declance.c_lance_load_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_declance.c_lance_load_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.dev_mc_list*, i64 }
%struct.dev_mc_list = type { i8*, %struct.dev_mc_list* }
%struct.lance_private = type { i32 }

@IFF_ALLMULTI = common dso_local global i32 0, align 4
@filter = common dso_local global i32* null, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @lance_load_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lance_load_multicast(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.lance_private*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dev_mc_list*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.lance_private* @netdev_priv(%struct.net_device* %9)
  store %struct.lance_private* %10, %struct.lance_private** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 2
  %17 = load %struct.dev_mc_list*, %struct.dev_mc_list** %16, align 8
  store %struct.dev_mc_list* %17, %struct.dev_mc_list** %5, align 8
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IFF_ALLMULTI, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %1
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** @filter, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %30 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @lib_ptr(i32* %25, i32 %28, i32 %31)
  store i32 65535, i32* %32, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = load i32*, i32** @filter, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %38 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32* @lib_ptr(i32* %33, i32 %36, i32 %39)
  store i32 65535, i32* %40, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** @filter, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %46 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @lib_ptr(i32* %41, i32 %44, i32 %47)
  store i32 65535, i32* %48, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** @filter, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %54 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32* @lib_ptr(i32* %49, i32 %52, i32 %55)
  store i32 65535, i32* %56, align 4
  br label %135

57:                                               ; preds = %1
  %58 = load i32*, i32** %4, align 8
  %59 = load i32*, i32** @filter, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %63 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32* @lib_ptr(i32* %58, i32 %61, i32 %64)
  store i32 0, i32* %65, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = load i32*, i32** @filter, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %71 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32* @lib_ptr(i32* %66, i32 %69, i32 %72)
  store i32 0, i32* %73, align 4
  %74 = load i32*, i32** %4, align 8
  %75 = load i32*, i32** @filter, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %79 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32* @lib_ptr(i32* %74, i32 %77, i32 %80)
  store i32 0, i32* %81, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = load i32*, i32** @filter, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %87 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32* @lib_ptr(i32* %82, i32 %85, i32 %88)
  store i32 0, i32* %89, align 4
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %131, %57
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.net_device*, %struct.net_device** %2, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %134

96:                                               ; preds = %90
  %97 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %98 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %6, align 8
  %100 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %101 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %100, i32 0, i32 1
  %102 = load %struct.dev_mc_list*, %struct.dev_mc_list** %101, align 8
  store %struct.dev_mc_list* %102, %struct.dev_mc_list** %5, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = and i32 %105, 1
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %96
  br label %131

109:                                              ; preds = %96
  %110 = load i32, i32* @ETH_ALEN, align 4
  %111 = load i8*, i8** %6, align 8
  %112 = call i32 @ether_crc_le(i32 %110, i8* %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = ashr i32 %113, 26
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = and i32 %115, 15
  %117 = shl i32 1, %116
  %118 = load i32*, i32** %4, align 8
  %119 = load i32*, i32** @filter, align 8
  %120 = load i32, i32* %8, align 4
  %121 = ashr i32 %120, 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %126 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32* @lib_ptr(i32* %118, i32 %124, i32 %127)
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %117
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %109, %108
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %7, align 4
  br label %90

134:                                              ; preds = %90
  br label %135

135:                                              ; preds = %134, %24
  ret void
}

declare dso_local %struct.lance_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @lib_ptr(i32*, i32, i32) #1

declare dso_local i32 @ether_crc_le(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
