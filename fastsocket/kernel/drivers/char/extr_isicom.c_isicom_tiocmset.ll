; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_isicom.c_isicom_tiocmset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_isicom.c_isicom_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.isi_port* }
%struct.isi_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"isicom_ioctl\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, i32, i32)* @isicom_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isicom_tiocmset(%struct.tty_struct* %0, %struct.file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.isi_port*, align 8
  %11 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 1
  %14 = load %struct.isi_port*, %struct.isi_port** %13, align 8
  store %struct.isi_port* %14, %struct.isi_port** %10, align 8
  %15 = load %struct.isi_port*, %struct.isi_port** %10, align 8
  %16 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %17 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @isicom_paranoia_check(%struct.isi_port* %15, i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %69

24:                                               ; preds = %4
  %25 = load %struct.isi_port*, %struct.isi_port** %10, align 8
  %26 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @TIOCM_RTS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load %struct.isi_port*, %struct.isi_port** %10, align 8
  %37 = call i32 @raise_rts(%struct.isi_port* %36)
  br label %38

38:                                               ; preds = %35, %24
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @TIOCM_DTR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.isi_port*, %struct.isi_port** %10, align 8
  %45 = call i32 @raise_dtr(%struct.isi_port* %44)
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @TIOCM_RTS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.isi_port*, %struct.isi_port** %10, align 8
  %53 = call i32 @drop_rts(%struct.isi_port* %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @TIOCM_DTR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.isi_port*, %struct.isi_port** %10, align 8
  %61 = call i32 @drop_dtr(%struct.isi_port* %60)
  br label %62

62:                                               ; preds = %59, %54
  %63 = load %struct.isi_port*, %struct.isi_port** %10, align 8
  %64 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %62, %21
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i64 @isicom_paranoia_check(%struct.isi_port*, i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raise_rts(%struct.isi_port*) #1

declare dso_local i32 @raise_dtr(%struct.isi_port*) #1

declare dso_local i32 @drop_rts(%struct.isi_port*) #1

declare dso_local i32 @drop_dtr(%struct.isi_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
