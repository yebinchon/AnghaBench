; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_mg_disk.c_mg_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_mg_disk.c_mg_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_host = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mg_drv_data* }
%struct.mg_drv_data = type { i64 }

@MG_ERR_NONE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MG_REG_STATUS = common dso_local global i64 0, align 8
@ATA_BUSY = common dso_local global i32 0, align 4
@ATA_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"mg_wait\00", align 1
@MG_STAT_READY = common dso_local global i32 0, align 4
@ATA_DRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"not ready\00", align 1
@MG_ERR_INV_STAT = common dso_local global i32 0, align 4
@MG_ERR_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mg_host*, i32, i32)* @mg_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mg_wait(%struct.mg_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mg_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mg_drv_data*, align 8
  store %struct.mg_host* %0, %struct.mg_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mg_host*, %struct.mg_host** %5, align 8
  %13 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.mg_drv_data*, %struct.mg_drv_data** %15, align 8
  store %struct.mg_drv_data* %16, %struct.mg_drv_data** %11, align 8
  %17 = load i32, i32* @MG_ERR_NONE, align 4
  %18 = load %struct.mg_host*, %struct.mg_host** %5, align 8
  %19 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i64, i64* @jiffies, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @msecs_to_jiffies(i32 %21)
  %23 = add i64 %20, %22
  store i64 %23, i64* %9, align 8
  %24 = load %struct.mg_drv_data*, %struct.mg_drv_data** %11, align 8
  %25 = getelementptr inbounds %struct.mg_drv_data, %struct.mg_drv_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %3
  %29 = load %struct.mg_host*, %struct.mg_host** %5, align 8
  %30 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MG_REG_STATUS, align 8
  %33 = add i64 %31, %32
  %34 = call i32 @inb(i64 %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.mg_host*, %struct.mg_host** %5, align 8
  %36 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MG_REG_STATUS, align 8
  %39 = add i64 %37, %38
  %40 = call i32 @inb(i64 %39)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %28, %3
  %42 = load %struct.mg_host*, %struct.mg_host** %5, align 8
  %43 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MG_REG_STATUS, align 8
  %46 = add i64 %44, %45
  %47 = call i32 @inb(i64 %46)
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %106, %41
  %49 = load i64, i64* @jiffies, align 8
  store i64 %49, i64* %10, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @ATA_BUSY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @ATA_BUSY, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %111

59:                                               ; preds = %54
  br label %91

60:                                               ; preds = %48
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @ATA_ERR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.mg_host*, %struct.mg_host** %5, align 8
  %68 = call i32 @mg_dump_status(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %66, %struct.mg_host* %67)
  br label %111

69:                                               ; preds = %60
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @MG_STAT_READY, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i32, i32* %8, align 4
  %75 = call i64 @MG_READY_OK(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %111

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %78, %69
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @ATA_DRQ, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @ATA_DRQ, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %111

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89, %79
  br label %91

91:                                               ; preds = %90, %59
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.mg_host*, %struct.mg_host** %5, align 8
  %97 = call i32 @mg_dump_status(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %95, %struct.mg_host* %96)
  %98 = load i32, i32* @MG_ERR_INV_STAT, align 4
  store i32 %98, i32* %4, align 4
  br label %127

99:                                               ; preds = %91
  %100 = load %struct.mg_host*, %struct.mg_host** %5, align 8
  %101 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @MG_REG_STATUS, align 8
  %104 = add i64 %102, %103
  %105 = call i32 @inb(i64 %104)
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %99
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* %9, align 8
  %109 = call i64 @time_before(i64 %107, i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %48, label %111

111:                                              ; preds = %106, %88, %77, %65, %58
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* %9, align 8
  %114 = call i64 @time_after_eq(i64 %112, i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i32, i32* @MG_ERR_TIMEOUT, align 4
  %121 = load %struct.mg_host*, %struct.mg_host** %5, align 8
  %122 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %119, %116, %111
  %124 = load %struct.mg_host*, %struct.mg_host** %5, align 8
  %125 = getelementptr inbounds %struct.mg_host, %struct.mg_host* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %123, %94
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @mg_dump_status(i8*, i32, %struct.mg_host*) #1

declare dso_local i64 @MG_READY_OK(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
