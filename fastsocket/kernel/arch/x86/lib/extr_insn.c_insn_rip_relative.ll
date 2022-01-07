; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/lib/extr_insn.c_insn_rip_relative.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/lib/extr_insn.c_insn_rip_relative.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn = type { i32, %struct.insn_field }
%struct.insn_field = type { i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @insn_rip_relative(%struct.insn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.insn*, align 8
  %4 = alloca %struct.insn_field*, align 8
  store %struct.insn* %0, %struct.insn** %3, align 8
  %5 = load %struct.insn*, %struct.insn** %3, align 8
  %6 = getelementptr inbounds %struct.insn, %struct.insn* %5, i32 0, i32 1
  store %struct.insn_field* %6, %struct.insn_field** %4, align 8
  %7 = load %struct.insn*, %struct.insn** %3, align 8
  %8 = getelementptr inbounds %struct.insn, %struct.insn* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

12:                                               ; preds = %1
  %13 = load %struct.insn_field*, %struct.insn_field** %4, align 8
  %14 = getelementptr inbounds %struct.insn_field, %struct.insn_field* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load %struct.insn*, %struct.insn** %3, align 8
  %19 = call i32 @insn_get_modrm(%struct.insn* %18)
  br label %20

20:                                               ; preds = %17, %12
  %21 = load %struct.insn_field*, %struct.insn_field** %4, align 8
  %22 = getelementptr inbounds %struct.insn_field, %struct.insn_field* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.insn_field*, %struct.insn_field** %4, align 8
  %27 = getelementptr inbounds %struct.insn_field, %struct.insn_field* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 199
  %30 = icmp eq i32 %29, 5
  br label %31

31:                                               ; preds = %25, %20
  %32 = phi i1 [ false, %20 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %11
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @insn_get_modrm(%struct.insn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
