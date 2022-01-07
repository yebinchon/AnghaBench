; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3590_unsolicited_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3590_unsolicited_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32 }
%struct.irb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DEV_STAT_CHN_END = common dso_local global i32 0, align 4
@TAPE_IO_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unsol.irq! tape ready: %08x\0A\00", align 1
@DEV_STAT_ATTENTION = common dso_local global i32 0, align 4
@TO_READ_ATTMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"unsol.irq! dev end: %08x\0A\00", align 1
@TO_MSEN = common dso_local global i32 0, align 4
@TAPE_IO_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*, %struct.irb*)* @tape_3590_unsolicited_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tape_3590_unsolicited_irq(%struct.tape_device* %0, %struct.irb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca %struct.irb*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store %struct.irb* %1, %struct.irb** %5, align 8
  %6 = load %struct.irb*, %struct.irb** %5, align 8
  %7 = getelementptr inbounds %struct.irb, %struct.irb* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @DEV_STAT_CHN_END, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @TAPE_IO_PENDING, align 4
  store i32 %14, i32* %3, align 4
  br label %55

15:                                               ; preds = %2
  %16 = load %struct.irb*, %struct.irb** %5, align 8
  %17 = getelementptr inbounds %struct.irb, %struct.irb* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 133
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %24 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @DBF_EVENT(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %49

27:                                               ; preds = %15
  %28 = load %struct.irb*, %struct.irb** %5, align 8
  %29 = getelementptr inbounds %struct.irb, %struct.irb* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DEV_STAT_ATTENTION, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %38 = load i32, i32* @TO_READ_ATTMSG, align 4
  %39 = call i32 @tape_3590_schedule_work(%struct.tape_device* %37, i32 %38)
  br label %48

40:                                               ; preds = %27
  %41 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %42 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @DBF_EVENT(i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %46 = load %struct.irb*, %struct.irb** %5, align 8
  %47 = call i32 @tape_dump_sense_dbf(%struct.tape_device* %45, i32* null, %struct.irb* %46)
  br label %48

48:                                               ; preds = %40, %36
  br label %49

49:                                               ; preds = %48, %22
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %52 = load i32, i32* @TO_MSEN, align 4
  %53 = call i32 @tape_3590_schedule_work(%struct.tape_device* %51, i32 %52)
  %54 = load i32, i32* @TAPE_IO_SUCCESS, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %50, %13
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @DBF_EVENT(i32, i8*, i32) #1

declare dso_local i32 @tape_3590_schedule_work(%struct.tape_device*, i32) #1

declare dso_local i32 @tape_dump_sense_dbf(%struct.tape_device*, i32*, %struct.irb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
