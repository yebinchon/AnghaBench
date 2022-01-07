; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_traps.c_default_do_nmi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_traps.c_default_do_nmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@DIE_NMI_IPI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"nmi_ipi\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@NOTIFY_STOP = common dso_local global i64 0, align 8
@DIE_NMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"nmi\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @default_do_nmi(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  store i8 0, i8* %3, align 1
  %5 = call i32 (...) @smp_processor_id()
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call zeroext i8 (...) @get_nmi_reason()
  store i8 %9, i8* %3, align 1
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i8, i8* %3, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 192
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @DIE_NMI_IPI, align 4
  %17 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %18 = load i8, i8* %3, align 1
  %19 = load i32, i32* @SIGINT, align 4
  %20 = call i64 @notify_die(i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.pt_regs* %17, i8 zeroext %18, i32 2, i32 %19)
  %21 = load i64, i64* @NOTIFY_STOP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %55

24:                                               ; preds = %15
  %25 = load i8, i8* %3, align 1
  %26 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %27 = call i32 @unknown_nmi_error(i8 zeroext %25, %struct.pt_regs* %26)
  br label %55

28:                                               ; preds = %10
  %29 = load i32, i32* @DIE_NMI, align 4
  %30 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %31 = load i8, i8* %3, align 1
  %32 = load i32, i32* @SIGINT, align 4
  %33 = call i64 @notify_die(i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.pt_regs* %30, i8 zeroext %31, i32 2, i32 %32)
  %34 = load i64, i64* @NOTIFY_STOP, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %55

37:                                               ; preds = %28
  %38 = load i8, i8* %3, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 128
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i8, i8* %3, align 1
  %44 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %45 = call i32 @mem_parity_error(i8 zeroext %43, %struct.pt_regs* %44)
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i8, i8* %3, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 64
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i8, i8* %3, align 1
  %53 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %54 = call i32 @io_check_error(i8 zeroext %52, %struct.pt_regs* %53)
  br label %55

55:                                               ; preds = %23, %24, %36, %51, %46
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local zeroext i8 @get_nmi_reason(...) #1

declare dso_local i64 @notify_die(i32, i8*, %struct.pt_regs*, i8 zeroext, i32, i32) #1

declare dso_local i32 @unknown_nmi_error(i8 zeroext, %struct.pt_regs*) #1

declare dso_local i32 @mem_parity_error(i8 zeroext, %struct.pt_regs*) #1

declare dso_local i32 @io_check_error(i8 zeroext, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
