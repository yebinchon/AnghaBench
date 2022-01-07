; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/sys-i386/extr_sysrq.c_show_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/sys-i386/extr_sysrq.c_show_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"EIP: %04lx:[<%08lx>] CPU: %d %s\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" ESP: %04lx:%08lx\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c" EFLAGS: %08lx\0A    %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"EAX: %08lx EBX: %08lx ECX: %08lx EDX: %08lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"ESI: %08lx EDI: %08lx EBP: %08lx\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c" DS: %04lx ES: %04lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_regs(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %5 = call i32 @PT_REGS_CS(%struct.pt_regs* %4)
  %6 = and i32 65535, %5
  %7 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %8 = call i32 @PT_REGS_IP(%struct.pt_regs* %7)
  %9 = call i32 (...) @smp_processor_id()
  %10 = call i32 (...) @print_tainted()
  %11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %6, i32 %8, i32 %9, i32 %10)
  %12 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %13 = call i32 @PT_REGS_CS(%struct.pt_regs* %12)
  %14 = and i32 %13, 3
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %18 = call i32 @PT_REGS_SS(%struct.pt_regs* %17)
  %19 = and i32 65535, %18
  %20 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %21 = call i32 @PT_REGS_SP(%struct.pt_regs* %20)
  %22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %19, i32 %21)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %25 = call i32 @PT_REGS_EFLAGS(%struct.pt_regs* %24)
  %26 = call i32 (...) @print_tainted()
  %27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %29 = call i32 @PT_REGS_EAX(%struct.pt_regs* %28)
  %30 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %31 = call i32 @PT_REGS_EBX(%struct.pt_regs* %30)
  %32 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %33 = call i32 @PT_REGS_ECX(%struct.pt_regs* %32)
  %34 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %35 = call i32 @PT_REGS_EDX(%struct.pt_regs* %34)
  %36 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %29, i32 %31, i32 %33, i32 %35)
  %37 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %38 = call i32 @PT_REGS_ESI(%struct.pt_regs* %37)
  %39 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %40 = call i32 @PT_REGS_EDI(%struct.pt_regs* %39)
  %41 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %42 = call i32 @PT_REGS_EBP(%struct.pt_regs* %41)
  %43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %38, i32 %40, i32 %42)
  %44 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %45 = call i32 @PT_REGS_DS(%struct.pt_regs* %44)
  %46 = and i32 65535, %45
  %47 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %48 = call i32 @PT_REGS_ES(%struct.pt_regs* %47)
  %49 = and i32 65535, %48
  %50 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %46, i32 %49)
  %51 = bitcast %struct.pt_regs** %2 to i64*
  %52 = call i32 @show_trace(i32* null, i64* %51)
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @PT_REGS_CS(%struct.pt_regs*) #1

declare dso_local i32 @PT_REGS_IP(%struct.pt_regs*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @print_tainted(...) #1

declare dso_local i32 @PT_REGS_SS(%struct.pt_regs*) #1

declare dso_local i32 @PT_REGS_SP(%struct.pt_regs*) #1

declare dso_local i32 @PT_REGS_EFLAGS(%struct.pt_regs*) #1

declare dso_local i32 @PT_REGS_EAX(%struct.pt_regs*) #1

declare dso_local i32 @PT_REGS_EBX(%struct.pt_regs*) #1

declare dso_local i32 @PT_REGS_ECX(%struct.pt_regs*) #1

declare dso_local i32 @PT_REGS_EDX(%struct.pt_regs*) #1

declare dso_local i32 @PT_REGS_ESI(%struct.pt_regs*) #1

declare dso_local i32 @PT_REGS_EDI(%struct.pt_regs*) #1

declare dso_local i32 @PT_REGS_EBP(%struct.pt_regs*) #1

declare dso_local i32 @PT_REGS_DS(%struct.pt_regs*) #1

declare dso_local i32 @PT_REGS_ES(%struct.pt_regs*) #1

declare dso_local i32 @show_trace(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
