; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_traps_64.c_misaligned_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_traps_64.c_misaligned_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i64* }

@VERIFY_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Unexpected width_shift %d in misaligned_store, PC=%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32, i32, i32)* @misaligned_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @misaligned_store(%struct.pt_regs* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @generate_and_check_address(%struct.pt_regs* %15, i32 %16, i32 %17, i32 %18, i64* %12)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %118

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = ashr i32 %25, 4
  %27 = and i32 %26, 63
  store i32 %27, i32* %11, align 4
  %28 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %29 = call i64 @user_mode(%struct.pt_regs* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %87

31:                                               ; preds = %24
  %32 = load i32, i32* @VERIFY_WRITE, align 4
  %33 = load i64, i64* %12, align 8
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = shl i64 1, %35
  %37 = call i32 @access_ok(i32 %32, i64 %33, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  store i32 -1, i32* %5, align 4
  br label %118

40:                                               ; preds = %31
  %41 = load i32, i32* %9, align 4
  switch i32 %41, label %70 [
    i32 1, label %42
    i32 2, label %52
    i32 3, label %62
  ]

42:                                               ; preds = %40
  %43 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %44 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = bitcast i64* %13 to i32*
  store i32 %50, i32* %51, align 8
  br label %76

52:                                               ; preds = %40
  %53 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %54 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = bitcast i64* %13 to i32*
  store i32 %60, i32* %61, align 8
  br label %76

62:                                               ; preds = %40
  %63 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %64 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %13, align 8
  br label %76

70:                                               ; preds = %40
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %73 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %71, i64 %74)
  br label %76

76:                                               ; preds = %70, %62, %52, %42
  %77 = load i64, i64* %12, align 8
  %78 = trunc i64 %77 to i32
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = load i32, i32* %9, align 4
  %82 = shl i32 1, %81
  %83 = call i64 @__copy_user(i8* %80, i64* %13, i32 %82)
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  store i32 -1, i32* %5, align 4
  br label %118

86:                                               ; preds = %76
  br label %117

87:                                               ; preds = %24
  %88 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %89 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %88, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %14, align 8
  %95 = load i32, i32* %9, align 4
  switch i32 %95, label %110 [
    i32 1, label %96
    i32 2, label %100
    i32 3, label %105
  ]

96:                                               ; preds = %87
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* %14, align 8
  %99 = call i32 @misaligned_kernel_word_store(i64 %97, i64 %98)
  br label %116

100:                                              ; preds = %87
  %101 = load i64, i64* %14, align 8
  %102 = load i64, i64* %12, align 8
  call void asm sideeffect "stlo.l $1, 0, $0", "r,r,~{dirflag},~{fpsr},~{flags}"(i64 %101, i64 %102) #2, !srcloc !2
  %103 = load i64, i64* %14, align 8
  %104 = load i64, i64* %12, align 8
  call void asm sideeffect "sthi.l $1, 3, $0", "r,r,~{dirflag},~{fpsr},~{flags}"(i64 %103, i64 %104) #2, !srcloc !3
  br label %116

105:                                              ; preds = %87
  %106 = load i64, i64* %14, align 8
  %107 = load i64, i64* %12, align 8
  call void asm sideeffect "stlo.q $1, 0, $0", "r,r,~{dirflag},~{fpsr},~{flags}"(i64 %106, i64 %107) #2, !srcloc !4
  %108 = load i64, i64* %14, align 8
  %109 = load i64, i64* %12, align 8
  call void asm sideeffect "sthi.q $1, 7, $0", "r,r,~{dirflag},~{fpsr},~{flags}"(i64 %108, i64 %109) #2, !srcloc !5
  br label %116

110:                                              ; preds = %87
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %113 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %111, i64 %114)
  br label %116

116:                                              ; preds = %110, %105, %100, %96
  br label %117

117:                                              ; preds = %116, %86
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %117, %85, %39, %22
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @generate_and_check_address(%struct.pt_regs*, i32, i32, i32, i64*) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @access_ok(i32, i64, i64) #1

declare dso_local i32 @printk(i8*, i32, i64) #1

declare dso_local i64 @__copy_user(i8*, i64*, i32) #1

declare dso_local i32 @misaligned_kernel_word_store(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1723}
!3 = !{i32 1781}
!4 = !{i32 1859}
!5 = !{i32 1917}
