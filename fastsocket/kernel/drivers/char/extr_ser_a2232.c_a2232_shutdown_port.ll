; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_ser_a2232.c_a2232_shutdown_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_ser_a2232.c_a2232_shutdown_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a2232_port = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.a2232status = type { i32, i32, i32 }

@GS_ACTIVE = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@A2232CMD_CMask = common dso_local global i32 0, align 4
@A2232CMD_Close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @a2232_shutdown_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a2232_shutdown_port(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.a2232_port*, align 8
  %4 = alloca %struct.a2232status*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.a2232_port*
  store %struct.a2232_port* %7, %struct.a2232_port** %3, align 8
  %8 = load %struct.a2232_port*, %struct.a2232_port** %3, align 8
  %9 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.a2232_port*, %struct.a2232_port** %3, align 8
  %12 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.a2232status* @a2232stat(i32 %10, i32 %13)
  store %struct.a2232status* %14, %struct.a2232status** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @local_irq_save(i64 %15)
  %17 = load i32, i32* @GS_ACTIVE, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.a2232_port*, %struct.a2232_port** %3, align 8
  %20 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %18
  store i32 %24, i32* %22, align 8
  %25 = load %struct.a2232_port*, %struct.a2232_port** %3, align 8
  %26 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %59

31:                                               ; preds = %1
  %32 = load %struct.a2232_port*, %struct.a2232_port** %3, align 8
  %33 = getelementptr inbounds %struct.a2232_port, %struct.a2232_port* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @HUPCL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %31
  %45 = load %struct.a2232status*, %struct.a2232status** %4, align 8
  %46 = getelementptr inbounds %struct.a2232status, %struct.a2232status* %45, i32 0, i32 0
  %47 = load volatile i32, i32* %46, align 4
  %48 = load i32, i32* @A2232CMD_CMask, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = load i32, i32* @A2232CMD_Close, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.a2232status*, %struct.a2232status** %4, align 8
  %54 = getelementptr inbounds %struct.a2232status, %struct.a2232status* %53, i32 0, i32 0
  store volatile i32 %52, i32* %54, align 4
  %55 = load %struct.a2232status*, %struct.a2232status** %4, align 8
  %56 = getelementptr inbounds %struct.a2232status, %struct.a2232status* %55, i32 0, i32 1
  store volatile i32 -1, i32* %56, align 4
  %57 = load %struct.a2232status*, %struct.a2232status** %4, align 8
  %58 = getelementptr inbounds %struct.a2232status, %struct.a2232status* %57, i32 0, i32 2
  store volatile i32 -1, i32* %58, align 4
  br label %59

59:                                               ; preds = %44, %31, %1
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @local_irq_restore(i64 %60)
  ret void
}

declare dso_local %struct.a2232status* @a2232stat(i32, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
