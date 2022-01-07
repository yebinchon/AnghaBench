; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_module_32.c_entry_matches.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_module_32.c_entry_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc_plt_entry = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ppc_plt_entry*, i32)* @entry_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @entry_matches(%struct.ppc_plt_entry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ppc_plt_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.ppc_plt_entry* %0, %struct.ppc_plt_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ppc_plt_entry*, %struct.ppc_plt_entry** %4, align 8
  %7 = getelementptr inbounds %struct.ppc_plt_entry, %struct.ppc_plt_entry* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, 32768
  %13 = ashr i32 %12, 16
  %14 = add nsw i32 1029701632, %13
  %15 = icmp eq i32 %10, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.ppc_plt_entry*, %struct.ppc_plt_entry** %4, align 8
  %18 = getelementptr inbounds %struct.ppc_plt_entry, %struct.ppc_plt_entry* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 65535
  %24 = add nsw i32 963313664, %23
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %28

27:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
