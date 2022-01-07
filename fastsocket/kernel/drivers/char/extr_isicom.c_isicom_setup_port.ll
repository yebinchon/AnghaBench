; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_isicom.c_isicom_setup_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_isicom.c_isicom_setup_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.isi_port* }
%struct.isi_port = type { i32, %struct.TYPE_2__, i64, i64, i64, %struct.isi_board* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.isi_board = type { i32, i32, i32, i32 }

@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@ISICOM_KILLTX = common dso_local global i32 0, align 4
@ISICOM_KILLRX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @isicom_setup_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isicom_setup_port(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.isi_port*, align 8
  %5 = alloca %struct.isi_board*, align 8
  %6 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 1
  %9 = load %struct.isi_port*, %struct.isi_port** %8, align 8
  store %struct.isi_port* %9, %struct.isi_port** %4, align 8
  %10 = load %struct.isi_port*, %struct.isi_port** %4, align 8
  %11 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %10, i32 0, i32 5
  %12 = load %struct.isi_board*, %struct.isi_board** %11, align 8
  store %struct.isi_board* %12, %struct.isi_board** %5, align 8
  %13 = load %struct.isi_port*, %struct.isi_port** %4, align 8
  %14 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %100

21:                                               ; preds = %1
  %22 = load %struct.isi_port*, %struct.isi_port** %4, align 8
  %23 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %22, i32 0, i32 1
  %24 = call i64 @tty_port_alloc_xmit_buf(%struct.TYPE_2__* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %100

29:                                               ; preds = %21
  %30 = load %struct.isi_board*, %struct.isi_board** %5, align 8
  %31 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %30, i32 0, i32 1
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load i32, i32* @TTY_IO_ERROR, align 4
  %35 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %36 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %35, i32 0, i32 0
  %37 = call i32 @clear_bit(i32 %34, i32* %36)
  %38 = load %struct.isi_port*, %struct.isi_port** %4, align 8
  %39 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %48

43:                                               ; preds = %29
  %44 = load %struct.isi_board*, %struct.isi_board** %5, align 8
  %45 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %43, %29
  %49 = load %struct.isi_port*, %struct.isi_port** %4, align 8
  %50 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.isi_port*, %struct.isi_port** %4, align 8
  %52 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load %struct.isi_port*, %struct.isi_port** %4, align 8
  %54 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = load %struct.isi_board*, %struct.isi_board** %5, align 8
  %56 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @WaitTillCardIsFree(i32 %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %48
  %61 = load %struct.isi_port*, %struct.isi_port** %4, align 8
  %62 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.isi_board*, %struct.isi_board** %5, align 8
  %65 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %63, %66
  %68 = or i32 32768, %67
  %69 = or i32 %68, 2
  %70 = load %struct.isi_board*, %struct.isi_board** %5, align 8
  %71 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @outw(i32 %69, i32 %72)
  %74 = load i32, i32* @ISICOM_KILLTX, align 4
  %75 = load i32, i32* @ISICOM_KILLRX, align 4
  %76 = or i32 %74, %75
  %77 = shl i32 %76, 8
  %78 = or i32 %77, 6
  %79 = load %struct.isi_board*, %struct.isi_board** %5, align 8
  %80 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @outw(i32 %78, i32 %81)
  %83 = load %struct.isi_board*, %struct.isi_board** %5, align 8
  %84 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @InterruptTheCard(i32 %85)
  br label %87

87:                                               ; preds = %60, %48
  %88 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %89 = call i32 @isicom_config_port(%struct.tty_struct* %88)
  %90 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %91 = load %struct.isi_port*, %struct.isi_port** %4, align 8
  %92 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %90
  store i32 %95, i32* %93, align 4
  %96 = load %struct.isi_board*, %struct.isi_board** %5, align 8
  %97 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %96, i32 0, i32 1
  %98 = load i64, i64* %6, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %87, %26, %20
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i64 @tty_port_alloc_xmit_buf(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @WaitTillCardIsFree(i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @InterruptTheCard(i32) #1

declare dso_local i32 @isicom_config_port(%struct.tty_struct*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
