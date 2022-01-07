; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_kgdb.c_putDebugString.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_kgdb.c_putDebugString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_buffer = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @putDebugString(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  call void asm sideeffect "spchere:", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  call void asm sideeffect "move $$spc, $$r10", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  call void asm sideeffect "cmp.d spchere, $$r10", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  call void asm sideeffect "bne nosstep", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !5
  call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !6
  call void asm sideeffect "move.d spccont, $$r10", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !7
  call void asm sideeffect "move $$r10, $$spc", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !8
  call void asm sideeffect "nosstep:", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !9
  %5 = load i8*, i8** @output_buffer, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  store i8 79, i8* %6, align 1
  %7 = load i8*, i8** @output_buffer, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 1
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @mem2hex(i8* %8, i8* %9, i32 %10)
  %12 = load i8*, i8** @output_buffer, align 8
  %13 = call i32 @putpacket(i8* %12)
  call void asm sideeffect "spccont:", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !10
  ret void
}

declare dso_local i32 @mem2hex(i8*, i8*, i32) #1

declare dso_local i32 @putpacket(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 287}
!3 = !{i32 305}
!4 = !{i32 330}
!5 = !{i32 359}
!6 = !{i32 380}
!7 = !{i32 393}
!8 = !{i32 423}
!9 = !{i32 448}
!10 = !{i32 597}
