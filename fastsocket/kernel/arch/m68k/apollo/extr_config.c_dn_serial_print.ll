; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/apollo/extr_config.c_dn_serial_print.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/apollo/extr_config.c_dn_serial_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i32 }

@sio01 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dn_serial_print(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %30, %1
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %7, label %31

7:                                                ; preds = %3
  %8 = load i8*, i8** %2, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 10
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  store i8 13, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sio01, i32 0, i32 0), align 4
  br label %13

13:                                               ; preds = %18, %12
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sio01, i32 0, i32 1), align 4
  %15 = and i32 %14, 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %13

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %7
  %21 = load i8*, i8** %2, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %2, align 8
  %23 = load i8, i8* %21, align 1
  store i8 %23, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sio01, i32 0, i32 0), align 4
  br label %24

24:                                               ; preds = %29, %20
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sio01, i32 0, i32 1), align 4
  %26 = and i32 %25, 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %24

30:                                               ; preds = %24
  br label %3

31:                                               ; preds = %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
