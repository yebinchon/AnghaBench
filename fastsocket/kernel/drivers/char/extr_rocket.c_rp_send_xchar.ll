; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_rocket.c_rp_send_xchar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_rocket.c_rp_send_xchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.r_port* }
%struct.r_port = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"rp_send_xchar\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8)* @rp_send_xchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rp_send_xchar(%struct.tty_struct* %0, i8 signext %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.r_port*, align 8
  %6 = alloca i32*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.r_port*, %struct.r_port** %8, align 8
  store %struct.r_port* %9, %struct.r_port** %5, align 8
  %10 = load %struct.r_port*, %struct.r_port** %5, align 8
  %11 = call i64 @rocket_paranoia_check(%struct.r_port* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %29

14:                                               ; preds = %2
  %15 = load %struct.r_port*, %struct.r_port** %5, align 8
  %16 = getelementptr inbounds %struct.r_port, %struct.r_port* %15, i32 0, i32 0
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @sGetTxCnt(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32*, i32** %6, align 8
  %22 = load i8, i8* %4, align 1
  %23 = call i32 @sWriteTxPrioByte(i32* %21, i8 signext %22)
  br label %29

24:                                               ; preds = %14
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @sGetTxRxDataIO(i32* %25)
  %27 = load i8, i8* %4, align 1
  %28 = call i32 @sWriteTxByte(i32 %26, i8 signext %27)
  br label %29

29:                                               ; preds = %13, %24, %20
  ret void
}

declare dso_local i64 @rocket_paranoia_check(%struct.r_port*, i8*) #1

declare dso_local i64 @sGetTxCnt(i32*) #1

declare dso_local i32 @sWriteTxPrioByte(i32*, i8 signext) #1

declare dso_local i32 @sWriteTxByte(i32, i8 signext) #1

declare dso_local i32 @sGetTxRxDataIO(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
