; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.specialix_board = type { i32 }
%struct.specialix_port = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"Receive\00", align 1
@SX_DEBUG_RX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Hmm, couldn't find port.\0A\00", align 1
@CD186x_RDCR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"port: %p: count: %d\0A\00", align 1
@CD186x_RDR = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.specialix_board*)* @sx_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sx_receive(%struct.specialix_board* %0) #0 {
  %2 = alloca %struct.specialix_board*, align 8
  %3 = alloca %struct.specialix_port*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8, align 1
  store %struct.specialix_board* %0, %struct.specialix_board** %2, align 8
  %6 = call i32 (...) @func_enter()
  %7 = load %struct.specialix_board*, %struct.specialix_board** %2, align 8
  %8 = call %struct.specialix_port* @sx_get_port(%struct.specialix_board* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.specialix_port* %8, %struct.specialix_port** %3, align 8
  %9 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %10 = icmp eq %struct.specialix_port* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @SX_DEBUG_RX, align 4
  %13 = call i32 (i32, i8*, ...) @dprintk(i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 (...) @func_exit()
  br label %62

15:                                               ; preds = %1
  %16 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %17 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.tty_struct*, %struct.tty_struct** %18, align 8
  store %struct.tty_struct* %19, %struct.tty_struct** %4, align 8
  %20 = load %struct.specialix_board*, %struct.specialix_board** %2, align 8
  %21 = load i32, i32* @CD186x_RDCR, align 4
  %22 = call zeroext i8 @sx_in(%struct.specialix_board* %20, i32 %21)
  store i8 %22, i8* %5, align 1
  %23 = load i32, i32* @SX_DEBUG_RX, align 4
  %24 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %25 = load i8, i8* %5, align 1
  %26 = zext i8 %25 to i32
  %27 = call i32 (i32, i8*, ...) @dprintk(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.specialix_port* %24, i32 %26)
  %28 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %29 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i8, i8* %5, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp sgt i32 %32, 8
  br i1 %33, label %34, label %35

34:                                               ; preds = %15
  br label %38

35:                                               ; preds = %15
  %36 = load i8, i8* %5, align 1
  %37 = zext i8 %36 to i32
  br label %38

38:                                               ; preds = %35, %34
  %39 = phi i32 [ 9, %34 ], [ %37, %35 ]
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %30, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %45 = load i8, i8* %5, align 1
  %46 = call i32 @tty_buffer_request_room(%struct.tty_struct* %44, i8 zeroext %45)
  br label %47

47:                                               ; preds = %51, %38
  %48 = load i8, i8* %5, align 1
  %49 = add i8 %48, -1
  store i8 %49, i8* %5, align 1
  %50 = icmp ne i8 %48, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %53 = load %struct.specialix_board*, %struct.specialix_board** %2, align 8
  %54 = load i32, i32* @CD186x_RDR, align 4
  %55 = call zeroext i8 @sx_in(%struct.specialix_board* %53, i32 %54)
  %56 = load i32, i32* @TTY_NORMAL, align 4
  %57 = call i32 @tty_insert_flip_char(%struct.tty_struct* %52, i8 zeroext %55, i32 %56)
  br label %47

58:                                               ; preds = %47
  %59 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %60 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %59)
  %61 = call i32 (...) @func_exit()
  br label %62

62:                                               ; preds = %58, %11
  ret void
}

declare dso_local i32 @func_enter(...) #1

declare dso_local %struct.specialix_port* @sx_get_port(%struct.specialix_board*, i8*) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @func_exit(...) #1

declare dso_local zeroext i8 @sx_in(%struct.specialix_board*, i32) #1

declare dso_local i32 @tty_buffer_request_room(%struct.tty_struct*, i8 zeroext) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i8 zeroext, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
