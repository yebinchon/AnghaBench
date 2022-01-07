; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_isicom.c_isicom_find_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_isicom.c_isicom_find_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isi_board = type { i32, i32 }
%struct.isi_port = type { %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.tty_struct = type { i32, i32 }

@PORT_COUNT = common dso_local global i32 0, align 4
@isi_card = common dso_local global %struct.isi_board* null, align 8
@FIRMWARE_LOADED = common dso_local global i32 0, align 4
@isi_ports = common dso_local global %struct.isi_port* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"isicom_open\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_port* (%struct.tty_struct*)* @isicom_find_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_port* @isicom_find_port(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_port*, align 8
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.isi_port*, align 8
  %5 = alloca %struct.isi_board*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @PORT_COUNT, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %1
  store %struct.tty_port* null, %struct.tty_port** %2, align 8
  br label %59

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @BOARD(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.isi_board*, %struct.isi_board** @isi_card, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %22, i64 %24
  store %struct.isi_board* %25, %struct.isi_board** %5, align 8
  %26 = load %struct.isi_board*, %struct.isi_board** %5, align 8
  %27 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @FIRMWARE_LOADED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %19
  store %struct.tty_port* null, %struct.tty_port** %2, align 8
  br label %59

33:                                               ; preds = %19
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = mul i32 %35, 16
  %37 = load %struct.isi_board*, %struct.isi_board** %5, align 8
  %38 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add i32 %36, %39
  %41 = sub i32 %40, 1
  %42 = icmp ugt i32 %34, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store %struct.tty_port* null, %struct.tty_port** %2, align 8
  br label %59

44:                                               ; preds = %33
  %45 = load %struct.isi_port*, %struct.isi_port** @isi_ports, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %45, i64 %47
  store %struct.isi_port* %48, %struct.isi_port** %4, align 8
  %49 = load %struct.isi_port*, %struct.isi_port** %4, align 8
  %50 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %51 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @isicom_paranoia_check(%struct.isi_port* %49, i32 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  store %struct.tty_port* null, %struct.tty_port** %2, align 8
  br label %59

56:                                               ; preds = %44
  %57 = load %struct.isi_port*, %struct.isi_port** %4, align 8
  %58 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %57, i32 0, i32 0
  store %struct.tty_port* %58, %struct.tty_port** %2, align 8
  br label %59

59:                                               ; preds = %56, %55, %43, %32, %18
  %60 = load %struct.tty_port*, %struct.tty_port** %2, align 8
  ret %struct.tty_port* %60
}

declare dso_local i32 @BOARD(i32) #1

declare dso_local i64 @isicom_paranoia_check(%struct.isi_port*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
