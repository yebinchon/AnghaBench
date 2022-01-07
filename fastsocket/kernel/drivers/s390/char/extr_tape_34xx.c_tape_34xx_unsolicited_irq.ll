; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_34xx.c_tape_34xx_unsolicited_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_34xx.c_tape_34xx_unsolicited_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32 }
%struct.irb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"xuud med\0A\00", align 1
@TO_MSEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unsol.irq! dev end: %08x\0A\00", align 1
@TAPE_IO_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*, %struct.irb*)* @tape_34xx_unsolicited_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tape_34xx_unsolicited_irq(%struct.tape_device* %0, %struct.irb* %1) #0 {
  %3 = alloca %struct.tape_device*, align 8
  %4 = alloca %struct.irb*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %3, align 8
  store %struct.irb* %1, %struct.irb** %4, align 8
  %5 = load %struct.irb*, %struct.irb** %4, align 8
  %6 = getelementptr inbounds %struct.irb, %struct.irb* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 133
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = call i32 (i32, i8*, ...) @DBF_EVENT(i32 6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %14 = call i32 @tape_34xx_delete_sbid_from(%struct.tape_device* %13, i32 0)
  %15 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %16 = load i32, i32* @TO_MSEN, align 4
  %17 = call i32 @tape_34xx_schedule_work(%struct.tape_device* %15, i32 %16)
  br label %26

18:                                               ; preds = %2
  %19 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %20 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, ...) @DBF_EVENT(i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %24 = load %struct.irb*, %struct.irb** %4, align 8
  %25 = call i32 @tape_dump_sense_dbf(%struct.tape_device* %23, i32* null, %struct.irb* %24)
  br label %26

26:                                               ; preds = %18, %11
  %27 = load i32, i32* @TAPE_IO_SUCCESS, align 4
  ret i32 %27
}

declare dso_local i32 @DBF_EVENT(i32, i8*, ...) #1

declare dso_local i32 @tape_34xx_delete_sbid_from(%struct.tape_device*, i32) #1

declare dso_local i32 @tape_34xx_schedule_work(%struct.tape_device*, i32) #1

declare dso_local i32 @tape_dump_sense_dbf(%struct.tape_device*, i32*, %struct.irb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
