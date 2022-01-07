; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_traps.c_show_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_traps.c_show_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.pt_regs = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"IRP: %08lx SRP: %08lx DCCR: %08lx USP: %08lx MOF: %08lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c" r0: %08lx  r1: %08lx   r2: %08lx  r3: %08lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c" r4: %08lx  r5: %08lx   r6: %08lx  r7: %08lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c" r8: %08lx  r9: %08lx  r10: %08lx r11: %08lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"r12: %08lx r13: %08lx oR10: %08lx  sp: %08lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"R_MMU_CAUSE: %08lx\0A\00", align 1
@R_MMU_CAUSE = common dso_local global i64* null, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"Process %s (pid: %d, stackpage=%08lx)\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"\0ACode: \00", align 1
@PAGE_OFFSET = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c" Bad IP value.\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"(%02x) \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_registers(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %6 = call i64 (...) @rdusp()
  store i64 %6, i64* %3, align 8
  %7 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %8 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %11 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %10, i32 0, i32 18
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %14 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %13, i32 0, i32 17
  %15 = load i32, i32* %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %18 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %17, i32 0, i32 16
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %9, i32 %12, i32 %15, i64 %16, i32 %19)
  %21 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %21, i32 0, i32 15
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %25 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %24, i32 0, i32 14
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 13
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %31 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %30, i32 0, i32 12
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %26, i32 %29, i32 %32)
  %34 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %35 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %34, i32 0, i32 11
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %41 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %44 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %39, i32 %42, i32 %45)
  %47 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %48 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %51 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %54 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %57 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %49, i32 %52, i32 %55, i32 %58)
  %60 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %61 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %64 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %67 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %70 = ptrtoint %struct.pt_regs* %69 to i64
  %71 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %62, i32 %65, i32 %68, i64 %70)
  %72 = load i64*, i64** @R_MMU_CAUSE, align 8
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64 %73)
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %82 = ptrtoint %struct.TYPE_2__* %81 to i64
  %83 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %77, i32 %80, i64 %82)
  %84 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %85 = call i32 @user_mode(%struct.pt_regs* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %138, label %87

87:                                               ; preds = %1
  %88 = load i64, i64* %3, align 8
  %89 = inttoptr i64 %88 to i64*
  %90 = call i32 @show_stack(i32* null, i64* %89)
  %91 = load i64, i64* %3, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = call i32 @show_stack(i32* null, i64* null)
  br label %95

95:                                               ; preds = %93, %87
  %96 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %97 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %98 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @PAGE_OFFSET, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %119

103:                                              ; preds = %95
  store i32 -12, i32* %4, align 4
  br label %104

104:                                              ; preds = %133, %103
  %105 = load i32, i32* %4, align 4
  %106 = icmp slt i32 %105, 12
  br i1 %106, label %107, label %136

107:                                              ; preds = %104
  %108 = load i8, i8* %5, align 1
  %109 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %110 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i8*
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = call i64 @__get_user(i8 zeroext %108, i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %107
  br label %119

119:                                              ; preds = %118, %102
  %120 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %136

121:                                              ; preds = %107
  %122 = load i32, i32* %4, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load i8, i8* %5, align 1
  %126 = zext i8 %125 to i32
  %127 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %126)
  br label %132

128:                                              ; preds = %121
  %129 = load i8, i8* %5, align 1
  %130 = zext i8 %129 to i32
  %131 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %128, %124
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %4, align 4
  br label %104

136:                                              ; preds = %119, %104
  %137 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %1
  ret void
}

declare dso_local i64 @rdusp(...) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @show_stack(i32*, i64*) #1

declare dso_local i64 @__get_user(i8 zeroext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
