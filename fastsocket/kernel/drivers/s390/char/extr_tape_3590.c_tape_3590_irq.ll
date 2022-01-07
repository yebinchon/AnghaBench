; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3590_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3590_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32 }
%struct.tape_request = type { i64, i32 }
%struct.irb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DEV_STAT_UNIT_EXCEP = common dso_local global i32 0, align 4
@DEV_STAT_DEV_END = common dso_local global i32 0, align 4
@TO_WRI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"End of volume\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@DEV_STAT_UNIT_CHECK = common dso_local global i32 0, align 4
@TO_FSB = common dso_local global i64 0, align 8
@TO_BSB = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Unit Exception!\0A\00", align 1
@DEV_STAT_CHN_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"cannel end\0A\00", align 1
@TAPE_IO_PENDING = common dso_local global i32 0, align 4
@DEV_STAT_ATTENTION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Unit Attention when busy..\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"xunknownirq\0A\00", align 1
@TAPE_IO_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*, %struct.tape_request*, %struct.irb*)* @tape_3590_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tape_3590_irq(%struct.tape_device* %0, %struct.tape_request* %1, %struct.irb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tape_device*, align 8
  %6 = alloca %struct.tape_request*, align 8
  %7 = alloca %struct.irb*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %5, align 8
  store %struct.tape_request* %1, %struct.tape_request** %6, align 8
  store %struct.irb* %2, %struct.irb** %7, align 8
  %8 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %9 = icmp eq %struct.tape_request* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %12 = load %struct.irb*, %struct.irb** %7, align 8
  %13 = call i32 @tape_3590_unsolicited_irq(%struct.tape_device* %11, %struct.irb* %12)
  store i32 %13, i32* %4, align 4
  br label %132

14:                                               ; preds = %3
  %15 = load %struct.irb*, %struct.irb** %7, align 8
  %16 = getelementptr inbounds %struct.irb, %struct.irb* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @DEV_STAT_UNIT_EXCEP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %14
  %24 = load %struct.irb*, %struct.irb** %7, align 8
  %25 = getelementptr inbounds %struct.irb, %struct.irb* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DEV_STAT_DEV_END, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %23
  %33 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %34 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TO_WRI, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = call i32 @DBF_EVENT(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %41 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %42 = load %struct.irb*, %struct.irb** %7, align 8
  %43 = load i32, i32* @ENOSPC, align 4
  %44 = sub nsw i32 0, %43
  %45 = call i32 @tape_3590_erp_failed(%struct.tape_device* %40, %struct.tape_request* %41, %struct.irb* %42, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %132

46:                                               ; preds = %32, %23, %14
  %47 = load %struct.irb*, %struct.irb** %7, align 8
  %48 = getelementptr inbounds %struct.irb, %struct.irb* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @DEV_STAT_UNIT_CHECK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  %56 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %57 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %58 = load %struct.irb*, %struct.irb** %7, align 8
  %59 = call i32 @tape_3590_unit_check(%struct.tape_device* %56, %struct.tape_request* %57, %struct.irb* %58)
  store i32 %59, i32* %4, align 4
  br label %132

60:                                               ; preds = %46
  %61 = load %struct.irb*, %struct.irb** %7, align 8
  %62 = getelementptr inbounds %struct.irb, %struct.irb* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @DEV_STAT_DEV_END, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %101

69:                                               ; preds = %60
  %70 = load %struct.irb*, %struct.irb** %7, align 8
  %71 = getelementptr inbounds %struct.irb, %struct.irb* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @DEV_STAT_UNIT_EXCEP, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %69
  %78 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %79 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TO_FSB, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %85 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @TO_BSB, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %83, %77
  %90 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %91 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  br label %96

94:                                               ; preds = %83
  %95 = call i32 @DBF_EVENT(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %89
  br label %97

97:                                               ; preds = %96, %69
  %98 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %99 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %100 = call i32 @tape_3590_done(%struct.tape_device* %98, %struct.tape_request* %99)
  store i32 %100, i32* %4, align 4
  br label %132

101:                                              ; preds = %60
  %102 = load %struct.irb*, %struct.irb** %7, align 8
  %103 = getelementptr inbounds %struct.irb, %struct.irb* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @DEV_STAT_CHN_END, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  %111 = call i32 @DBF_EVENT(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i32, i32* @TAPE_IO_PENDING, align 4
  store i32 %112, i32* %4, align 4
  br label %132

113:                                              ; preds = %101
  %114 = load %struct.irb*, %struct.irb** %7, align 8
  %115 = getelementptr inbounds %struct.irb, %struct.irb* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @DEV_STAT_ATTENTION, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %113
  %123 = call i32 @DBF_EVENT(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %124 = load i32, i32* @TAPE_IO_PENDING, align 4
  store i32 %124, i32* %4, align 4
  br label %132

125:                                              ; preds = %113
  %126 = call i32 @DBF_EVENT(i32 6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %127 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %128 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %129 = load %struct.irb*, %struct.irb** %7, align 8
  %130 = call i32 @tape_dump_sense_dbf(%struct.tape_device* %127, %struct.tape_request* %128, %struct.irb* %129)
  %131 = load i32, i32* @TAPE_IO_STOP, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %125, %122, %110, %97, %55, %38, %10
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @tape_3590_unsolicited_irq(%struct.tape_device*, %struct.irb*) #1

declare dso_local i32 @DBF_EVENT(i32, i8*) #1

declare dso_local i32 @tape_3590_erp_failed(%struct.tape_device*, %struct.tape_request*, %struct.irb*, i32) #1

declare dso_local i32 @tape_3590_unit_check(%struct.tape_device*, %struct.tape_request*, %struct.irb*) #1

declare dso_local i32 @tape_3590_done(%struct.tape_device*, %struct.tape_request*) #1

declare dso_local i32 @tape_dump_sense_dbf(%struct.tape_device*, %struct.tape_request*, %struct.irb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
