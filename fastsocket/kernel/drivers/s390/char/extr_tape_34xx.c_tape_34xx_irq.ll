; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_34xx.c_tape_34xx_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_34xx.c_tape_34xx_irq.c"
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
@ENOSPC = common dso_local global i32 0, align 4
@DEV_STAT_UNIT_CHECK = common dso_local global i32 0, align 4
@TO_BSB = common dso_local global i64 0, align 8
@TO_FSB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Unit Exception!\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"xunknownirq\0A\00", align 1
@TAPE_IO_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*, %struct.tape_request*, %struct.irb*)* @tape_34xx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tape_34xx_irq(%struct.tape_device* %0, %struct.tape_request* %1, %struct.irb* %2) #0 {
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
  %13 = call i32 @tape_34xx_unsolicited_irq(%struct.tape_device* %11, %struct.irb* %12)
  store i32 %13, i32* %4, align 4
  br label %105

14:                                               ; preds = %3
  %15 = load %struct.irb*, %struct.irb** %7, align 8
  %16 = getelementptr inbounds %struct.irb, %struct.irb* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @DEV_STAT_UNIT_EXCEP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %14
  %24 = load %struct.irb*, %struct.irb** %7, align 8
  %25 = getelementptr inbounds %struct.irb, %struct.irb* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DEV_STAT_DEV_END, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %23
  %33 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %34 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TO_WRI, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %40 = load i32, i32* @ENOSPC, align 4
  %41 = sub nsw i32 0, %40
  %42 = call i32 @tape_34xx_erp_failed(%struct.tape_request* %39, i32 %41)
  store i32 %42, i32* %4, align 4
  br label %105

43:                                               ; preds = %32, %23, %14
  %44 = load %struct.irb*, %struct.irb** %7, align 8
  %45 = getelementptr inbounds %struct.irb, %struct.irb* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DEV_STAT_UNIT_CHECK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %54 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %55 = load %struct.irb*, %struct.irb** %7, align 8
  %56 = call i32 @tape_34xx_unit_check(%struct.tape_device* %53, %struct.tape_request* %54, %struct.irb* %55)
  store i32 %56, i32* %4, align 4
  br label %105

57:                                               ; preds = %43
  %58 = load %struct.irb*, %struct.irb** %7, align 8
  %59 = getelementptr inbounds %struct.irb, %struct.irb* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @DEV_STAT_DEV_END, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %98

66:                                               ; preds = %57
  %67 = load %struct.irb*, %struct.irb** %7, align 8
  %68 = getelementptr inbounds %struct.irb, %struct.irb* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @DEV_STAT_UNIT_EXCEP, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %66
  %76 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %77 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @TO_BSB, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %83 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @TO_FSB, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %81, %75
  %88 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %89 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  br label %94

92:                                               ; preds = %81
  %93 = call i32 @DBF_EVENT(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %87
  br label %95

95:                                               ; preds = %94, %66
  %96 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %97 = call i32 @tape_34xx_done(%struct.tape_request* %96)
  store i32 %97, i32* %4, align 4
  br label %105

98:                                               ; preds = %57
  %99 = call i32 @DBF_EVENT(i32 6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %100 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %101 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %102 = load %struct.irb*, %struct.irb** %7, align 8
  %103 = call i32 @tape_dump_sense_dbf(%struct.tape_device* %100, %struct.tape_request* %101, %struct.irb* %102)
  %104 = load i32, i32* @TAPE_IO_STOP, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %98, %95, %52, %38, %10
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @tape_34xx_unsolicited_irq(%struct.tape_device*, %struct.irb*) #1

declare dso_local i32 @tape_34xx_erp_failed(%struct.tape_request*, i32) #1

declare dso_local i32 @tape_34xx_unit_check(%struct.tape_device*, %struct.tape_request*, %struct.irb*) #1

declare dso_local i32 @DBF_EVENT(i32, i8*) #1

declare dso_local i32 @tape_34xx_done(%struct.tape_request*) #1

declare dso_local i32 @tape_dump_sense_dbf(%struct.tape_device*, %struct.tape_request*, %struct.irb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
