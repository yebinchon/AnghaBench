; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.specialix_board = type { i32, i32, i32 }
%struct.specialix_port = type { %struct.TYPE_2__, i64*, i64 }
%struct.TYPE_2__ = type { %struct.tty_struct*, i32 }
%struct.tty_struct = type { %struct.specialix_port*, i32, i32 }
%struct.file = type { i32 }

@SX_NBOARD = common dso_local global i32 0, align 4
@sx_board = common dso_local global %struct.specialix_board* null, align 8
@SX_BOARD_PRESENT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@sx_port = common dso_local global %struct.specialix_port* null, align 8
@SX_NPORT = common dso_local global i32 0, align 4
@SX_DEBUG_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Board = %d, bp = %p, port = %p, portno = %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"sx_open\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @sx_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.specialix_port*, align 8
  %9 = alloca %struct.specialix_board*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %12 = call i32 (...) @func_enter()
  %13 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @SX_BOARD(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @SX_NBOARD, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %30, label %20

20:                                               ; preds = %2
  %21 = load %struct.specialix_board*, %struct.specialix_board** @sx_board, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %21, i64 %23
  %25 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SX_BOARD_PRESENT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %20, %2
  %31 = call i32 (...) @func_exit()
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %139

34:                                               ; preds = %20
  %35 = load %struct.specialix_board*, %struct.specialix_board** @sx_board, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %35, i64 %37
  store %struct.specialix_board* %38, %struct.specialix_board** %9, align 8
  %39 = load %struct.specialix_port*, %struct.specialix_port** @sx_port, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @SX_NPORT, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %39, i64 %43
  %45 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %46 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @SX_PORT(i32 %47)
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %44, i64 %49
  store %struct.specialix_port* %50, %struct.specialix_port** %8, align 8
  %51 = load %struct.specialix_port*, %struct.specialix_port** %8, align 8
  %52 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %63, %34
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 10
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load %struct.specialix_port*, %struct.specialix_port** %8, align 8
  %58 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %53

66:                                               ; preds = %53
  %67 = load i32, i32* @SX_DEBUG_OPEN, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.specialix_board*, %struct.specialix_board** %9, align 8
  %70 = load %struct.specialix_port*, %struct.specialix_port** %8, align 8
  %71 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %72 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @SX_PORT(i32 %73)
  %75 = call i32 @dprintk(i32 %67, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %68, %struct.specialix_board* %69, %struct.specialix_port* %70, i32 %74)
  %76 = load %struct.specialix_port*, %struct.specialix_port** %8, align 8
  %77 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %78 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @sx_paranoia_check(%struct.specialix_port* %76, i32 %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %66
  %83 = call i32 (...) @func_enter()
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %139

86:                                               ; preds = %66
  %87 = load %struct.specialix_board*, %struct.specialix_board** %9, align 8
  %88 = call i32 @sx_setup_board(%struct.specialix_board* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = call i32 (...) @func_exit()
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %3, align 4
  br label %139

94:                                               ; preds = %86
  %95 = load %struct.specialix_board*, %struct.specialix_board** %9, align 8
  %96 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %95, i32 0, i32 1
  %97 = load i64, i64* %11, align 8
  %98 = call i32 @spin_lock_irqsave(i32* %96, i64 %97)
  %99 = load %struct.specialix_port*, %struct.specialix_port** %8, align 8
  %100 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  %104 = load %struct.specialix_board*, %struct.specialix_board** %9, align 8
  %105 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = load %struct.specialix_port*, %struct.specialix_port** %8, align 8
  %109 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %110 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %109, i32 0, i32 0
  store %struct.specialix_port* %108, %struct.specialix_port** %110, align 8
  %111 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %112 = load %struct.specialix_port*, %struct.specialix_port** %8, align 8
  %113 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store %struct.tty_struct* %111, %struct.tty_struct** %114, align 8
  %115 = load %struct.specialix_board*, %struct.specialix_board** %9, align 8
  %116 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %115, i32 0, i32 1
  %117 = load i64, i64* %11, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  %119 = load %struct.specialix_board*, %struct.specialix_board** %9, align 8
  %120 = load %struct.specialix_port*, %struct.specialix_port** %8, align 8
  %121 = call i32 @sx_setup_port(%struct.specialix_board* %119, %struct.specialix_port* %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %94
  %125 = call i32 (...) @func_enter()
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %3, align 4
  br label %139

127:                                              ; preds = %94
  %128 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %129 = load %struct.file*, %struct.file** %5, align 8
  %130 = load %struct.specialix_port*, %struct.specialix_port** %8, align 8
  %131 = call i32 @block_til_ready(%struct.tty_struct* %128, %struct.file* %129, %struct.specialix_port* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = call i32 (...) @func_enter()
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %3, align 4
  br label %139

137:                                              ; preds = %127
  %138 = call i32 (...) @func_exit()
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %137, %134, %124, %91, %82, %30
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @func_enter(...) #1

declare dso_local i32 @SX_BOARD(i32) #1

declare dso_local i32 @func_exit(...) #1

declare dso_local i32 @SX_PORT(i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, %struct.specialix_board*, %struct.specialix_port*, i32) #1

declare dso_local i64 @sx_paranoia_check(%struct.specialix_port*, i32, i8*) #1

declare dso_local i32 @sx_setup_board(%struct.specialix_board*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sx_setup_port(%struct.specialix_board*, %struct.specialix_port*) #1

declare dso_local i32 @block_til_ready(%struct.tty_struct*, %struct.file*, %struct.specialix_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
