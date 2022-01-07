; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_ethtool.c_ql_update_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_ethtool.c_ql_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Couldn't get xgmac sem.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Error reading status register 0x%.04x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*)* @ql_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_update_stats(%struct.ql_adapter* %0) #0 {
  %2 = alloca %struct.ql_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %2, align 8
  %6 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32* %8, i32** %5, align 8
  %9 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %13 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @ql_sem_spinlock(%struct.ql_adapter* %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %20 = load i32, i32* @drv, align 4
  %21 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %19, i32 %20, i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %151

25:                                               ; preds = %1
  store i32 512, i32* %3, align 4
  br label %26

26:                                               ; preds = %48, %25
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 640
  br i1 %28, label %29, label %51

29:                                               ; preds = %26
  %30 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @ql_read_xgmac_reg64(%struct.ql_adapter* %30, i32 %31, i32* %4)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %36 = load i32, i32* @drv, align 4
  %37 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %35, i32 %36, i32 %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %145

42:                                               ; preds = %29
  %43 = load i32, i32* %4, align 4
  %44 = load i32*, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %42
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %5, align 8
  br label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 8
  store i32 %50, i32* %3, align 4
  br label %26

51:                                               ; preds = %26
  store i32 768, i32* %3, align 4
  br label %52

52:                                               ; preds = %74, %51
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %53, 976
  br i1 %54, label %55, label %77

55:                                               ; preds = %52
  %56 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %57 = load i32, i32* %3, align 4
  %58 = call i64 @ql_read_xgmac_reg64(%struct.ql_adapter* %56, i32 %57, i32* %4)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %62 = load i32, i32* @drv, align 4
  %63 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %61, i32 %62, i32 %65, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %145

68:                                               ; preds = %55
  %69 = load i32, i32* %4, align 4
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %68
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %5, align 8
  br label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 8
  store i32 %76, i32* %3, align 4
  br label %52

77:                                               ; preds = %52
  store i32 1280, i32* %3, align 4
  br label %78

78:                                               ; preds = %100, %77
  %79 = load i32, i32* %3, align 4
  %80 = icmp slt i32 %79, 1344
  br i1 %80, label %81, label %103

81:                                               ; preds = %78
  %82 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %83 = load i32, i32* %3, align 4
  %84 = call i64 @ql_read_xgmac_reg64(%struct.ql_adapter* %82, i32 %83, i32* %4)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %88 = load i32, i32* @drv, align 4
  %89 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %90 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %3, align 4
  %93 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %87, i32 %88, i32 %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %145

94:                                               ; preds = %81
  %95 = load i32, i32* %4, align 4
  %96 = load i32*, i32** %5, align 8
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %94
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %5, align 8
  br label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %3, align 4
  %102 = add nsw i32 %101, 8
  store i32 %102, i32* %3, align 4
  br label %78

103:                                              ; preds = %78
  store i32 1384, i32* %3, align 4
  br label %104

104:                                              ; preds = %126, %103
  %105 = load i32, i32* %3, align 4
  %106 = icmp slt i32 %105, 1448
  br i1 %106, label %107, label %129

107:                                              ; preds = %104
  %108 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %109 = load i32, i32* %3, align 4
  %110 = call i64 @ql_read_xgmac_reg64(%struct.ql_adapter* %108, i32 %109, i32* %4)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %114 = load i32, i32* @drv, align 4
  %115 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %116 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %3, align 4
  %119 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %113, i32 %114, i32 %117, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  br label %145

120:                                              ; preds = %107
  %121 = load i32, i32* %4, align 4
  %122 = load i32*, i32** %5, align 8
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %120
  %124 = load i32*, i32** %5, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %5, align 8
  br label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %3, align 4
  %128 = add nsw i32 %127, 8
  store i32 %128, i32* %3, align 4
  br label %104

129:                                              ; preds = %104
  %130 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %131 = call i64 @ql_read_xgmac_reg64(%struct.ql_adapter* %130, i32 1464, i32* %4)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %129
  %134 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %135 = load i32, i32* @drv, align 4
  %136 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %137 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %3, align 4
  %140 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_err(%struct.ql_adapter* %134, i32 %135, i32 %138, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %139)
  br label %145

141:                                              ; preds = %129
  %142 = load i32, i32* %4, align 4
  %143 = load i32*, i32** %5, align 8
  store i32 %142, i32* %143, align 4
  br label %144

144:                                              ; preds = %141
  br label %145

145:                                              ; preds = %144, %133, %112, %86, %60, %34
  %146 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %147 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %148 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @ql_sem_unlock(%struct.ql_adapter* %146, i32 %149)
  br label %151

151:                                              ; preds = %145, %18
  %152 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %153 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %152, i32 0, i32 0
  %154 = call i32 @spin_unlock(i32* %153)
  %155 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %156 = call i32 @QL_DUMP_STAT(%struct.ql_adapter* %155)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ql_sem_spinlock(%struct.ql_adapter*, i32) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*, ...) #1

declare dso_local i64 @ql_read_xgmac_reg64(%struct.ql_adapter*, i32, i32*) #1

declare dso_local i32 @ql_sem_unlock(%struct.ql_adapter*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @QL_DUMP_STAT(%struct.ql_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
