; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_gdb-stub.c_gdbstub_send_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_gdb-stub.c_gdbstub_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"### GDB Tx '%s' ###\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"### GDB Rx ACK\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"### GDB Tx Abandoned\0A\00", align 1
@gdbstub_rx_unget = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gdbstub_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdbstub_send_packet(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 (i8*, ...) @gdbstub_proto(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %7)
  br label %9

9:                                                ; preds = %47, %1
  %10 = call i32 @gdbstub_tx_char(i8 signext 36)
  store i8 0, i8* %4, align 1
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %19, %9
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %6, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %11
  %20 = load i8, i8* %6, align 1
  %21 = call i32 @gdbstub_tx_char(i8 signext %20)
  %22 = load i8, i8* %6, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  %26 = add nsw i32 %25, %23
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %4, align 1
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %11

30:                                               ; preds = %11
  %31 = call i32 @gdbstub_tx_char(i8 signext 35)
  %32 = load i8, i8* %4, align 1
  %33 = call signext i8 @hex_asc_hi(i8 zeroext %32)
  %34 = call i32 @gdbstub_tx_char(i8 signext %33)
  %35 = load i8, i8* %4, align 1
  %36 = call signext i8 @hex_asc_lo(i8 zeroext %35)
  %37 = call i32 @gdbstub_tx_char(i8 signext %36)
  br label %38

38:                                               ; preds = %30
  %39 = call i32 @gdbstub_rx_char(i8* %6, i32 0)
  %40 = load i8, i8* %6, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp ne i32 %41, 43
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i8, i8* %6, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp ne i32 %45, 36
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i1 [ false, %38 ], [ %46, %43 ]
  br i1 %48, label %9, label %49

49:                                               ; preds = %47
  %50 = load i8, i8* %6, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 43
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 (i8*, ...) @gdbstub_proto(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %58

55:                                               ; preds = %49
  %56 = call i32 (i8*, ...) @gdbstub_proto(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i8, i8* %6, align 1
  store i8 %57, i8* @gdbstub_rx_unget, align 1
  store i32 1, i32* %2, align 4
  br label %58

58:                                               ; preds = %55, %53
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @gdbstub_proto(i8*, ...) #1

declare dso_local i32 @gdbstub_tx_char(i8 signext) #1

declare dso_local signext i8 @hex_asc_hi(i8 zeroext) #1

declare dso_local signext i8 @hex_asc_lo(i8 zeroext) #1

declare dso_local i32 @gdbstub_rx_char(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
