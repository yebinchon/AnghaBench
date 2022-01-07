; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_isicom.c_isicom_shutdown_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_isicom.c_isicom_shutdown_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isi_port = type { %struct.TYPE_4__, %struct.isi_board* }
%struct.TYPE_4__ = type { i32 }
%struct.isi_board = type { i64, i32 }
%struct.tty_struct = type { i32 }

@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"isicom_shutdown_port: bad board(0x%lx) count %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isi_port*)* @isicom_shutdown_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isicom_shutdown_port(%struct.isi_port* %0) #0 {
  %2 = alloca %struct.isi_port*, align 8
  %3 = alloca %struct.isi_board*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  store %struct.isi_port* %0, %struct.isi_port** %2, align 8
  %5 = load %struct.isi_port*, %struct.isi_port** %2, align 8
  %6 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %5, i32 0, i32 1
  %7 = load %struct.isi_board*, %struct.isi_board** %6, align 8
  store %struct.isi_board* %7, %struct.isi_board** %3, align 8
  %8 = load %struct.isi_port*, %struct.isi_port** %2, align 8
  %9 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %8, i32 0, i32 0
  %10 = call %struct.tty_struct* @tty_port_tty_get(%struct.TYPE_4__* %9)
  store %struct.tty_struct* %10, %struct.tty_struct** %4, align 8
  %11 = load %struct.isi_port*, %struct.isi_port** %2, align 8
  %12 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %20 = call i32 @tty_kref_put(%struct.tty_struct* %19)
  br label %81

21:                                               ; preds = %1
  %22 = load %struct.isi_port*, %struct.isi_port** %2, align 8
  %23 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %22, i32 0, i32 0
  %24 = call i32 @tty_port_free_xmit_buf(%struct.TYPE_4__* %23)
  %25 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.isi_port*, %struct.isi_port** %2, align 8
  %28 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %26
  store i32 %31, i32* %29, align 8
  %32 = load %struct.isi_port*, %struct.isi_port** %2, align 8
  %33 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %32, i32 0, i32 0
  %34 = call i32 @tty_port_tty_set(%struct.TYPE_4__* %33, i32* null)
  %35 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %36 = call i64 @C_HUPCL(%struct.tty_struct* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %21
  %39 = load %struct.isi_port*, %struct.isi_port** %2, align 8
  %40 = call i32 @drop_dtr(%struct.isi_port* %39)
  br label %41

41:                                               ; preds = %38, %21
  %42 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %43 = icmp ne %struct.tty_struct* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* @TTY_IO_ERROR, align 4
  %46 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %47 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %46, i32 0, i32 0
  %48 = call i32 @set_bit(i32 %45, i32* %47)
  br label %49

49:                                               ; preds = %44, %41
  %50 = load %struct.isi_board*, %struct.isi_board** %3, align 8
  %51 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* %51, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load %struct.isi_board*, %struct.isi_board** %3, align 8
  %57 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.isi_board*, %struct.isi_board** %3, align 8
  %60 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @pr_dbg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %58, i64 %61)
  %63 = load %struct.isi_board*, %struct.isi_board** %3, align 8
  %64 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %55, %49
  %66 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %67 = call i64 @C_HUPCL(%struct.tty_struct* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load %struct.isi_board*, %struct.isi_board** %3, align 8
  %71 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load %struct.isi_board*, %struct.isi_board** %3, align 8
  %76 = call i32 @isicom_shutdown_board(%struct.isi_board* %75)
  br label %77

77:                                               ; preds = %74, %69
  br label %78

78:                                               ; preds = %77, %65
  %79 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %80 = call i32 @tty_kref_put(%struct.tty_struct* %79)
  br label %81

81:                                               ; preds = %78, %18
  ret void
}

declare dso_local %struct.tty_struct* @tty_port_tty_get(%struct.TYPE_4__*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @tty_port_free_xmit_buf(%struct.TYPE_4__*) #1

declare dso_local i32 @tty_port_tty_set(%struct.TYPE_4__*, i32*) #1

declare dso_local i64 @C_HUPCL(%struct.tty_struct*) #1

declare dso_local i32 @drop_dtr(%struct.isi_port*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @pr_dbg(i8*, i32, i64) #1

declare dso_local i32 @isicom_shutdown_board(%struct.isi_board*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
