; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/kernel/extr_signal.c_rt_setup_ucontext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/kernel/extr_signal.c_rt_setup_ucontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucontext = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.pt_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.switch_stack = type { i32, i32, i32, i32, i32, i32 }

@MCONTEXT_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucontext*, %struct.pt_regs*)* @rt_setup_ucontext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_setup_ucontext(%struct.ucontext* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.ucontext*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.switch_stack*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.ucontext* %0, %struct.ucontext** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %8 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %9 = bitcast %struct.pt_regs* %8 to %struct.switch_stack*
  %10 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %9, i64 -1
  store %struct.switch_stack* %10, %struct.switch_stack** %5, align 8
  %11 = load %struct.ucontext*, %struct.ucontext** %3, align 8
  %12 = getelementptr inbounds %struct.ucontext, %struct.ucontext* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* @MCONTEXT_VERSION, align 4
  %16 = load %struct.ucontext*, %struct.ucontext** %3, align 8
  %17 = getelementptr inbounds %struct.ucontext, %struct.ucontext* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @__put_user(i32 %15, i32* %18)
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %23 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %22, i32 0, i32 10
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = call i32 @__put_user(i32 %24, i32* %26)
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %31 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = call i32 @__put_user(i32 %32, i32* %34)
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %39 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = call i32 @__put_user(i32 %40, i32* %42)
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %47 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = call i32 @__put_user(i32 %48, i32* %50)
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  %59 = call i32 @__put_user(i32 %56, i32* %58)
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %63 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  %67 = call i32 @__put_user(i32 %64, i32* %66)
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load %struct.switch_stack*, %struct.switch_stack** %5, align 8
  %71 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 6
  %75 = call i32 @__put_user(i32 %72, i32* %74)
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %7, align 4
  %78 = load %struct.switch_stack*, %struct.switch_stack** %5, align 8
  %79 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 7
  %83 = call i32 @__put_user(i32 %80, i32* %82)
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  %86 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %87 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %6, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 8
  %91 = call i32 @__put_user(i32 %88, i32* %90)
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %7, align 4
  %94 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %95 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 9
  %99 = call i32 @__put_user(i32 %96, i32* %98)
  %100 = load i32, i32* %7, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %7, align 4
  %102 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %103 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 10
  %107 = call i32 @__put_user(i32 %104, i32* %106)
  %108 = load i32, i32* %7, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %7, align 4
  %110 = load %struct.switch_stack*, %struct.switch_stack** %5, align 8
  %111 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %6, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 11
  %115 = call i32 @__put_user(i32 %112, i32* %114)
  %116 = load i32, i32* %7, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %7, align 4
  %118 = load %struct.switch_stack*, %struct.switch_stack** %5, align 8
  %119 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %6, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 12
  %123 = call i32 @__put_user(i32 %120, i32* %122)
  %124 = load i32, i32* %7, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %7, align 4
  %126 = load %struct.switch_stack*, %struct.switch_stack** %5, align 8
  %127 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %6, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 13
  %131 = call i32 @__put_user(i32 %128, i32* %130)
  %132 = load i32, i32* %7, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %7, align 4
  %134 = load %struct.switch_stack*, %struct.switch_stack** %5, align 8
  %135 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %6, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 14
  %139 = call i32 @__put_user(i32 %136, i32* %138)
  %140 = load i32, i32* %7, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %7, align 4
  %142 = call i32 (...) @rdusp()
  %143 = load i32*, i32** %6, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 15
  %145 = call i32 @__put_user(i32 %142, i32* %144)
  %146 = load i32, i32* %7, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %7, align 4
  %148 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %149 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** %6, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 16
  %153 = call i32 @__put_user(i32 %150, i32* %152)
  %154 = load i32, i32* %7, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %7, align 4
  %156 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %157 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %6, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 17
  %161 = call i32 @__put_user(i32 %158, i32* %160)
  %162 = load i32, i32* %7, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %7, align 4
  ret i32 %164
}

declare dso_local i32 @__put_user(i32, i32*) #1

declare dso_local i32 @rdusp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
