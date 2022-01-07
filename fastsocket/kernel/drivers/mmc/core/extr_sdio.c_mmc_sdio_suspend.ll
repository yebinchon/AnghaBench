; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio.c_mmc_sdio_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio.c_mmc_sdio_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.sdio_func** }
%struct.sdio_func = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)* }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @mmc_sdio_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_sdio_suspend(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdio_func*, align 8
  %6 = alloca %struct.dev_pm_ops*, align 8
  %7 = alloca %struct.sdio_func*, align 8
  %8 = alloca %struct.dev_pm_ops*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %74, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %12 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %77

17:                                               ; preds = %9
  %18 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %19 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load %struct.sdio_func**, %struct.sdio_func*** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.sdio_func*, %struct.sdio_func** %22, i64 %24
  %26 = load %struct.sdio_func*, %struct.sdio_func** %25, align 8
  store %struct.sdio_func* %26, %struct.sdio_func** %5, align 8
  %27 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %28 = icmp ne %struct.sdio_func* %27, null
  br i1 %28, label %29, label %73

29:                                               ; preds = %17
  %30 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %31 = call i64 @sdio_func_present(%struct.sdio_func* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %73

33:                                               ; preds = %29
  %34 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %35 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = icmp ne %struct.TYPE_6__* %37, null
  br i1 %38, label %39, label %73

39:                                               ; preds = %33
  %40 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %41 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %44, align 8
  store %struct.dev_pm_ops* %45, %struct.dev_pm_ops** %6, align 8
  %46 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %6, align 8
  %47 = icmp ne %struct.dev_pm_ops* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %39
  %49 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %6, align 8
  %50 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %50, align 8
  %52 = icmp ne i32 (%struct.TYPE_7__*)* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %6, align 8
  %55 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %54, i32 0, i32 1
  %56 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %55, align 8
  %57 = icmp ne i32 (%struct.TYPE_7__*)* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %53, %48, %39
  %59 = load i32, i32* @ENOSYS, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %68

61:                                               ; preds = %53
  %62 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %6, align 8
  %63 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %62, i32 0, i32 0
  %64 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %63, align 8
  %65 = load %struct.sdio_func*, %struct.sdio_func** %5, align 8
  %66 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %65, i32 0, i32 0
  %67 = call i32 %64(%struct.TYPE_7__* %66)
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %61, %58
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %77

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72, %33, %29, %17
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %9

77:                                               ; preds = %71, %9
  br label %78

78:                                               ; preds = %122, %77
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %3, align 4
  %84 = icmp sge i32 %83, 0
  br label %85

85:                                               ; preds = %81, %78
  %86 = phi i1 [ false, %78 ], [ %84, %81 ]
  br i1 %86, label %87, label %123

87:                                               ; preds = %85
  %88 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %89 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load %struct.sdio_func**, %struct.sdio_func*** %91, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.sdio_func*, %struct.sdio_func** %92, i64 %94
  %96 = load %struct.sdio_func*, %struct.sdio_func** %95, align 8
  store %struct.sdio_func* %96, %struct.sdio_func** %7, align 8
  %97 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %98 = icmp ne %struct.sdio_func* %97, null
  br i1 %98, label %99, label %122

99:                                               ; preds = %87
  %100 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %101 = call i64 @sdio_func_present(%struct.sdio_func* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %122

103:                                              ; preds = %99
  %104 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %105 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = icmp ne %struct.TYPE_6__* %107, null
  br i1 %108, label %109, label %122

109:                                              ; preds = %103
  %110 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %111 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %114, align 8
  store %struct.dev_pm_ops* %115, %struct.dev_pm_ops** %8, align 8
  %116 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %8, align 8
  %117 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %116, i32 0, i32 1
  %118 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %117, align 8
  %119 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %120 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %119, i32 0, i32 0
  %121 = call i32 %118(%struct.TYPE_7__* %120)
  br label %122

122:                                              ; preds = %109, %103, %99, %87
  br label %78

123:                                              ; preds = %85
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i64 @sdio_func_present(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
