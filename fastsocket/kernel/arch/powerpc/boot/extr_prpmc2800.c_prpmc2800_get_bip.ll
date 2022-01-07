; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_prpmc2800.c_prpmc2800_get_bip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_prpmc2800.c_prpmc2800_get_bip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prpmc2800_board_info = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Error: Can't open i2c device\0A\0D\00", align 1
@EEPROM2_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Error: Couldn't read eeprom2\0A\0D\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Error: Unsupported board or corrupted VPD:\0A\0D\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"  0x%x 0x%x 0x%x 0x%x 0x%x\0A\0D\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Using device tree defaults...\0A\0D\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.prpmc2800_board_info* ()* @prpmc2800_get_bip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.prpmc2800_board_info* @prpmc2800_get_bip() #0 {
  %1 = alloca %struct.prpmc2800_board_info*, align 8
  %2 = alloca [5 x i32], align 16
  %3 = alloca i32, align 4
  %4 = call i64 (...) @mv64x60_i2c_open()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @fatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 0
  %10 = call i32 @memset(i32* %9, i32 0, i32 20)
  %11 = load i32, i32* @EEPROM2_ADDR, align 4
  %12 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 0
  %13 = call i32 @mv64x60_i2c_read(i32 %11, i32* %12, i32 8158, i32 2, i32 20)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = call i32 @fatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %8
  %19 = call i32 (...) @mv64x60_i2c_close()
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 0
  %21 = call %struct.prpmc2800_board_info* @prpmc2800_get_board_info(i32* %20)
  store %struct.prpmc2800_board_info* %21, %struct.prpmc2800_board_info** %1, align 8
  %22 = load %struct.prpmc2800_board_info*, %struct.prpmc2800_board_info** %1, align 8
  %23 = icmp eq %struct.prpmc2800_board_info* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %26 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 0
  %27 = load i32, i32* %26, align 16
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 2
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [5 x i32], [5 x i32]* %2, i64 0, i64 4
  %35 = load i32, i32* %34, align 16
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %27, i32 %29, i32 %31, i32 %33, i32 %35)
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %38

38:                                               ; preds = %24, %18
  %39 = load %struct.prpmc2800_board_info*, %struct.prpmc2800_board_info** %1, align 8
  ret %struct.prpmc2800_board_info* %39
}

declare dso_local i64 @mv64x60_i2c_open(...) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mv64x60_i2c_read(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @mv64x60_i2c_close(...) #1

declare dso_local %struct.prpmc2800_board_info* @prpmc2800_get_board_info(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
