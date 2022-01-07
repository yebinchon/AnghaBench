; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_gdb-stub.c_putpacket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_gdb-stub.c_putpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"### GDB Tx $'%s'#?? ###\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"### GDB Rx NAK\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"### GDB Rx ??? %02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"### GDB Rx ACK\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"### GDB Tx Abandoned\0A\00", align 1
@gdbstub_rx_unget = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @putpacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @putpacket(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @gdbstub_proto(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %7)
  br label %9

9:                                                ; preds = %69, %1
  %10 = call i32 @gdbstub_io_tx_char(i8 signext 36)
  store i8 0, i8* %4, align 1
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %19, %9
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %5, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %11
  %20 = load i8, i8* %5, align 1
  %21 = call i32 @gdbstub_io_tx_char(i8 signext %20)
  %22 = load i8, i8* %5, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  %26 = add nsw i32 %25, %23
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %4, align 1
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %11

30:                                               ; preds = %11
  %31 = call i32 @gdbstub_io_tx_char(i8 signext 35)
  %32 = load i8, i8* %4, align 1
  %33 = call signext i8 @hex_asc_hi(i8 zeroext %32)
  %34 = call i32 @gdbstub_io_tx_char(i8 signext %33)
  %35 = load i8, i8* %4, align 1
  %36 = call signext i8 @hex_asc_lo(i8 zeroext %35)
  %37 = call i32 @gdbstub_io_tx_char(i8 signext %36)
  br label %38

38:                                               ; preds = %30
  %39 = call i32 @gdbstub_io_rx_char(i8* %5, i32 0)
  %40 = load i8, i8* %5, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %41, 45
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 (i8*, ...) @gdbstub_io(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %38
  %46 = phi i1 [ false, %38 ], [ false, %43 ]
  %47 = zext i1 %46 to i32
  %48 = load i8, i8* %5, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp ne i32 %49, 45
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load i8, i8* %5, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp ne i32 %53, 43
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i8, i8* %5, align 1
  %57 = zext i8 %56 to i32
  %58 = call i32 (i8*, ...) @gdbstub_io(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %55, %51, %45
  %60 = phi i1 [ false, %51 ], [ false, %45 ], [ false, %55 ]
  %61 = zext i1 %60 to i32
  %62 = load i8, i8* %5, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp ne i32 %63, 43
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i8, i8* %5, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp ne i32 %67, 36
  br label %69

69:                                               ; preds = %65, %59
  %70 = phi i1 [ false, %59 ], [ %68, %65 ]
  br i1 %70, label %9, label %71

71:                                               ; preds = %69
  %72 = load i8, i8* %5, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 43
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 (i8*, ...) @gdbstub_io(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %80

77:                                               ; preds = %71
  %78 = call i32 (i8*, ...) @gdbstub_io(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %79 = load i8, i8* %5, align 1
  store i8 %79, i8* @gdbstub_rx_unget, align 1
  store i32 1, i32* %2, align 4
  br label %80

80:                                               ; preds = %77, %75
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @gdbstub_proto(i8*, i8*) #1

declare dso_local i32 @gdbstub_io_tx_char(i8 signext) #1

declare dso_local signext i8 @hex_asc_hi(i8 zeroext) #1

declare dso_local signext i8 @hex_asc_lo(i8 zeroext) #1

declare dso_local i32 @gdbstub_io_rx_char(i8*, i32) #1

declare dso_local i32 @gdbstub_io(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
