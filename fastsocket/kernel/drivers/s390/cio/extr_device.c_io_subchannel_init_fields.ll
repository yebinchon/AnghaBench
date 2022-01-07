; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_io_subchannel_init_fields.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device.c_io_subchannel_init_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_6__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@CONSOLE_ISC = common dso_local global i32 0, align 4
@IO_SCH_ISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"Detected device %04x on subchannel 0.%x.%04X - PIM = %02X, PAM = %02X, POM = %02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.subchannel*)* @io_subchannel_init_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_subchannel_init_fields(%struct.subchannel* %0) #0 {
  %2 = alloca %struct.subchannel*, align 8
  store %struct.subchannel* %0, %struct.subchannel** %2, align 8
  %3 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %4 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %3, i32 0, i32 3
  %5 = bitcast %struct.TYPE_6__* %4 to i64*
  %6 = load i64, i64* %5, align 4
  %7 = call i64 @cio_is_console(i64 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %11 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %10, i32 0, i32 0
  store i32 255, i32* %11, align 4
  br label %17

12:                                               ; preds = %1
  %13 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %14 = call i32 @chp_get_sch_opm(%struct.subchannel* %13)
  %15 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %16 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  br label %17

17:                                               ; preds = %12, %9
  %18 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %19 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %24 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %22, %25
  %27 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %28 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %30 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %29, i32 0, i32 3
  %31 = bitcast %struct.TYPE_6__* %30 to i64*
  %32 = load i64, i64* %31, align 4
  %33 = call i64 @cio_is_console(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %17
  %36 = load i32, i32* @CONSOLE_ISC, align 4
  br label %39

37:                                               ; preds = %17
  %38 = load i32, i32* @IO_SCH_ISC, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %42 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %44 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %49 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %53 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %57 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %62 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %67 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @CIO_MSG_EVENT(i32 6, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %51, i32 %55, i32 %60, i32 %65, i32 %70)
  %72 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %73 = call i32 @io_subchannel_init_config(%struct.subchannel* %72)
  ret void
}

declare dso_local i64 @cio_is_console(i64) #1

declare dso_local i32 @chp_get_sch_opm(%struct.subchannel*) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @io_subchannel_init_config(%struct.subchannel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
