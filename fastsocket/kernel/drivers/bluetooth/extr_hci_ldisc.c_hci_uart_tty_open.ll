; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_tty_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_tty_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.TYPE_6__*, %struct.hci_uart*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { {}* }
%struct.hci_uart = type { i32, %struct.tty_struct* }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"tty %p\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Can't allocate control structure\00", align 1
@ENFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @hci_uart_tty_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_uart_tty_open(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.hci_uart*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 2
  %7 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %8 = bitcast %struct.hci_uart* %7 to i8*
  %9 = bitcast i8* %8 to %struct.hci_uart*
  store %struct.hci_uart* %9, %struct.hci_uart** %4, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.tty_struct* %10)
  %12 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %13 = icmp ne %struct.hci_uart* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EEXIST, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %70

17:                                               ; preds = %1
  %18 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %19 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %70

27:                                               ; preds = %17
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.hci_uart* @kzalloc(i32 16, i32 %28)
  store %struct.hci_uart* %29, %struct.hci_uart** %4, align 8
  %30 = icmp ne %struct.hci_uart* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = call i32 @BT_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ENFILE, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %70

35:                                               ; preds = %27
  %36 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %37 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %38 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %37, i32 0, i32 2
  store %struct.hci_uart* %36, %struct.hci_uart** %38, align 8
  %39 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %40 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %41 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %40, i32 0, i32 1
  store %struct.tty_struct* %39, %struct.tty_struct** %41, align 8
  %42 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %43 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %42, i32 0, i32 0
  store i32 65536, i32* %43, align 8
  %44 = load %struct.hci_uart*, %struct.hci_uart** %4, align 8
  %45 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %44, i32 0, i32 0
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %48 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = bitcast {}** %52 to i32 (%struct.tty_struct*)**
  %54 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %53, align 8
  %55 = icmp ne i32 (%struct.tty_struct*)* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %35
  %57 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %58 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = bitcast {}** %62 to i32 (%struct.tty_struct*)**
  %64 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %63, align 8
  %65 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %66 = call i32 %64(%struct.tty_struct* %65)
  br label %67

67:                                               ; preds = %56, %35
  %68 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %69 = call i32 @tty_driver_flush_buffer(%struct.tty_struct* %68)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %67, %31, %24, %14
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @BT_DBG(i8*, %struct.tty_struct*) #1

declare dso_local %struct.hci_uart* @kzalloc(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tty_driver_flush_buffer(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
