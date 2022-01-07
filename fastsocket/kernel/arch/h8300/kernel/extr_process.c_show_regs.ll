; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/kernel/extr_process.c_show_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/kernel/extr_process.c_show_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"\0APC: %08lx  Status: %02x\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"\0AORIG_ER0: %08lx ER0: %08lx ER1: %08lx\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"\0AER2: %08lx ER3: %08lx ER4: %08lx ER5: %08lx\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"\0AER6' %08lx \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"USP: %08lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_regs(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %3 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %4 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %3, i32 0, i32 9
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %7 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %6, i32 0, i32 8
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %8)
  %10 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %11 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %14 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 %15, i32 %18)
  %20 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %21 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %24 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %30 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32 %25, i32 %28, i32 %31)
  %33 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %34 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %38 = call i64 @user_mode(%struct.pt_regs* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %1
  %41 = call i32 (...) @rdusp()
  %42 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  br label %45

43:                                               ; preds = %1
  %44 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %40
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @rdusp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
