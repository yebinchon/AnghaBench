; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/lib/extr_mmx_32.c_fast_clear_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/lib/extr_mmx_32.c_fast_clear_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fast_clear_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fast_clear_page(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = call i32 (...) @kernel_fpu_begin()
  call void asm sideeffect "  pxor %mm0, %mm0\0A", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %12, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 32
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load i8*, i8** %2, align 8
  call void asm sideeffect "  movq %mm0, ($0)\0A  movq %mm0, 8($0)\0A  movq %mm0, 16($0)\0A  movq %mm0, 24($0)\0A  movq %mm0, 32($0)\0A  movq %mm0, 40($0)\0A  movq %mm0, 48($0)\0A  movq %mm0, 56($0)\0A  movq %mm0, 64($0)\0A  movq %mm0, 72($0)\0A  movq %mm0, 80($0)\0A  movq %mm0, 88($0)\0A  movq %mm0, 96($0)\0A  movq %mm0, 104($0)\0A  movq %mm0, 112($0)\0A  movq %mm0, 120($0)\0A", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %9) #2, !srcloc !3
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr i8, i8* %10, i64 128
  store i8* %11, i8** %2, align 8
  br label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %3, align 4
  br label %5

15:                                               ; preds = %5
  %16 = call i32 (...) @kernel_fpu_end()
  ret void
}

declare dso_local i32 @kernel_fpu_begin(...) #1

declare dso_local i32 @kernel_fpu_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 307}
!3 = !{i32 401, i32 427, i32 453, i32 480, i32 507, i32 534, i32 561, i32 588, i32 615, i32 642, i32 669, i32 696, i32 723, i32 750, i32 778, i32 806}
