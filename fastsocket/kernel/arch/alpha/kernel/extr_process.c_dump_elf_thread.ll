; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_process.c_dump_elf_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_process.c_dump_elf_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.switch_stack = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_elf_thread(i32* %0, %struct.pt_regs* %1, %struct.thread_info* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.thread_info*, align 8
  %7 = alloca %struct.switch_stack*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store %struct.thread_info* %2, %struct.thread_info** %6, align 8
  %8 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %9 = bitcast %struct.pt_regs* %8 to %struct.switch_stack*
  %10 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %9, i64 -1
  store %struct.switch_stack* %10, %struct.switch_stack** %7, align 8
  %11 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i32 0, i32 23
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 22
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %21, i32 0, i32 21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i32 0, i32 20
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %32 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %31, i32 0, i32 19
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %37 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %36, i32 0, i32 18
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 5
  store i32 %38, i32* %40, align 4
  %41 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %42 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %41, i32 0, i32 17
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 6
  store i32 %43, i32* %45, align 4
  %46 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %47 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %46, i32 0, i32 16
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 7
  store i32 %48, i32* %50, align 4
  %51 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 15
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 8
  store i32 %53, i32* %55, align 4
  %56 = load %struct.switch_stack*, %struct.switch_stack** %7, align 8
  %57 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 9
  store i32 %58, i32* %60, align 4
  %61 = load %struct.switch_stack*, %struct.switch_stack** %7, align 8
  %62 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 10
  store i32 %63, i32* %65, align 4
  %66 = load %struct.switch_stack*, %struct.switch_stack** %7, align 8
  %67 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 11
  store i32 %68, i32* %70, align 4
  %71 = load %struct.switch_stack*, %struct.switch_stack** %7, align 8
  %72 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %4, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 12
  store i32 %73, i32* %75, align 4
  %76 = load %struct.switch_stack*, %struct.switch_stack** %7, align 8
  %77 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 13
  store i32 %78, i32* %80, align 4
  %81 = load %struct.switch_stack*, %struct.switch_stack** %7, align 8
  %82 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 14
  store i32 %83, i32* %85, align 4
  %86 = load %struct.switch_stack*, %struct.switch_stack** %7, align 8
  %87 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %4, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 15
  store i32 %88, i32* %90, align 4
  %91 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %92 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %91, i32 0, i32 14
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %4, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 16
  store i32 %93, i32* %95, align 4
  %96 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %97 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %96, i32 0, i32 13
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %4, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 17
  store i32 %98, i32* %100, align 4
  %101 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %102 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %101, i32 0, i32 12
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %4, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 18
  store i32 %103, i32* %105, align 4
  %106 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %107 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %106, i32 0, i32 11
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %4, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 19
  store i32 %108, i32* %110, align 4
  %111 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %112 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %111, i32 0, i32 10
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %4, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 20
  store i32 %113, i32* %115, align 4
  %116 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %117 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %116, i32 0, i32 9
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %4, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 21
  store i32 %118, i32* %120, align 4
  %121 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %122 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %4, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 22
  store i32 %123, i32* %125, align 4
  %126 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %127 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %4, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 23
  store i32 %128, i32* %130, align 4
  %131 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %132 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %4, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 24
  store i32 %133, i32* %135, align 4
  %136 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %137 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %4, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 25
  store i32 %138, i32* %140, align 4
  %141 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %142 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %4, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 26
  store i32 %143, i32* %145, align 4
  %146 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %147 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load i32*, i32** %4, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 27
  store i32 %148, i32* %150, align 4
  %151 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %152 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %4, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 28
  store i32 %153, i32* %155, align 4
  %156 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %157 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %4, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 29
  store i32 %158, i32* %160, align 4
  %161 = call i32 (...) @rdusp()
  %162 = load i32*, i32** %4, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 30
  store i32 %161, i32* %163, align 4
  %164 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %165 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %4, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 31
  store i32 %166, i32* %168, align 4
  %169 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %170 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %4, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 32
  store i32 %172, i32* %174, align 4
  ret void
}

declare dso_local i32 @rdusp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
