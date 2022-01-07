; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip27/extr_ip27-berr.c_ip27_be_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip27/extr_ip27-berr.c_ip27_be_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32 }

@PI_CPU_NUM = common dso_local global i32 0, align 4
@MIPS_BE_FIXUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Slice %c got %cbe at 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Hub information:\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"ERR_INT_PEND = 0x%06llx\0A\00", align 1
@PI_ERR_INT_PEND = common dso_local global i32 0, align 4
@PI_ERR_STATUS0_B = common dso_local global i32 0, align 4
@PI_ERR_STATUS0_A = common dso_local global i32 0, align 4
@PI_ERR_STATUS1_B = common dso_local global i32 0, align 4
@PI_ERR_STATUS1_A = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip27_be_handler(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %10 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @PI_CPU_NUM, align 4
  %14 = call i8* @LOCAL_HUB_L(i32 %13)
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @MIPS_BE_FIXUP, align 4
  ret i32 %19

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 65, %21
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 100, i32 105
  %27 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26, i32 %29)
  %31 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @PI_ERR_INT_PEND, align 4
  %33 = call i8* @LOCAL_HUB_L(i32 %32)
  %34 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %20
  %38 = load i32, i32* @PI_ERR_STATUS0_B, align 4
  br label %41

39:                                               ; preds = %20
  %40 = load i32, i32* @PI_ERR_STATUS0_A, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = call i8* @LOCAL_HUB_L(i32 %42)
  %44 = ptrtoint i8* %43 to i64
  store i64 %44, i64* %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @PI_ERR_STATUS1_B, align 4
  br label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @PI_ERR_STATUS1_A, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = call i8* @LOCAL_HUB_L(i32 %52)
  %54 = ptrtoint i8* %53 to i64
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @dump_hub_information(i64 %55, i64 %56)
  %58 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %59 = call i32 @show_regs(%struct.pt_regs* %58)
  %60 = call i32 (...) @dump_tlb_all()
  br label %61

61:                                               ; preds = %51, %61
  br label %61
}

declare dso_local i8* @LOCAL_HUB_L(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @dump_hub_information(i64, i64) #1

declare dso_local i32 @show_regs(%struct.pt_regs*) #1

declare dso_local i32 @dump_tlb_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
