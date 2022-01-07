; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_traps.c_show_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/kernel/extr_traps.c_show_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.pt_regs = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"CPU: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"ERP: %08lx SRP: %08lx  CCS: %08lx USP: %08lx MOF: %08lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c" r0: %08lx  r1: %08lx   r2: %08lx  r3: %08lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c" r4: %08lx  r5: %08lx   r6: %08lx  r7: %08lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c" r8: %08lx  r9: %08lx  r10: %08lx r11: %08lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"r12: %08lx r13: %08lx oR10: %08lx acr: %08lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" sp: %08lx\0A\00", align 1
@BANK_IM = common dso_local global i32 0, align 4
@RW_MM_CAUSE = common dso_local global i32 0, align 4
@BANK_DM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"       Data MMU Cause: %08lx\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Instruction MMU Cause: %08lx\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Process %s (pid: %d, stackpage=%08lx)\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"\0ACode: \00", align 1
@PAGE_OFFSET = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c" Bad IP value.\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"(%02x) \00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_registers(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %8 = call i64 (...) @rdusp()
  store i64 %8, i64* %3, align 8
  %9 = call i32 (...) @smp_processor_id()
  %10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %15 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %14, i32 0, i32 19
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %18 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %17, i32 0, i32 18
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %3, align 8
  %21 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %22 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %21, i32 0, i32 17
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %13, i32 %16, i32 %19, i64 %20, i32 %23)
  %25 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %26 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %25, i32 0, i32 16
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %29 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %28, i32 0, i32 15
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %32 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %31, i32 0, i32 14
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %35 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %34, i32 0, i32 13
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 %30, i32 %33, i32 %36)
  %38 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %39 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %38, i32 0, i32 12
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %42 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %41, i32 0, i32 11
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %45 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %48 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %40, i32 %43, i32 %46, i32 %49)
  %51 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %58 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %61 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %53, i32 %56, i32 %59, i32 %62)
  %64 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %65 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %68 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %71 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %74 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %66, i32 %69, i32 %72, i32 %75)
  %77 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %78 = ptrtoint %struct.pt_regs* %77 to i64
  %79 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 %78)
  %80 = load i32, i32* @BANK_IM, align 4
  %81 = call i32 @SUPP_BANK_SEL(i32 %80)
  %82 = load i32, i32* @RW_MM_CAUSE, align 4
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @SUPP_REG_RD(i32 %82, i64 %83)
  %85 = load i32, i32* @BANK_DM, align 4
  %86 = call i32 @SUPP_BANK_SEL(i32 %85)
  %87 = load i32, i32* @RW_MM_CAUSE, align 4
  %88 = load i64, i64* %4, align 8
  %89 = call i32 @SUPP_REG_RD(i32 %87, i64 %88)
  %90 = load i64, i64* %4, align 8
  %91 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i64 %90)
  %92 = load i64, i64* %5, align 8
  %93 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i64 %92)
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %101 = ptrtoint %struct.TYPE_2__* %100 to i64
  %102 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %96, i32 %99, i64 %101)
  %103 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %104 = call i32 @user_mode(%struct.pt_regs* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %157, label %106

106:                                              ; preds = %1
  %107 = load i64, i64* %3, align 8
  %108 = inttoptr i64 %107 to i64*
  %109 = call i32 @show_stack(i32* null, i64* %108)
  %110 = load i64, i64* %3, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = call i32 @show_stack(i32* null, i64* null)
  br label %114

114:                                              ; preds = %112, %106
  %115 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %116 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %117 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @PAGE_OFFSET, align 8
  %120 = icmp slt i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %138

122:                                              ; preds = %114
  store i32 -12, i32* %6, align 4
  br label %123

123:                                              ; preds = %152, %122
  %124 = load i32, i32* %6, align 4
  %125 = icmp slt i32 %124, 12
  br i1 %125, label %126, label %155

126:                                              ; preds = %123
  %127 = load i8, i8* %7, align 1
  %128 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %129 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to i8*
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = call i64 @__get_user(i8 zeroext %127, i8* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %126
  br label %138

138:                                              ; preds = %137, %121
  %139 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  br label %155

140:                                              ; preds = %126
  %141 = load i32, i32* %6, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i8, i8* %7, align 1
  %145 = zext i8 %144 to i32
  %146 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %145)
  br label %151

147:                                              ; preds = %140
  %148 = load i8, i8* %7, align 1
  %149 = zext i8 %148 to i32
  %150 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %147, %143
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %6, align 4
  br label %123

155:                                              ; preds = %138, %123
  %156 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %157

157:                                              ; preds = %155, %1
  ret void
}

declare dso_local i64 @rdusp(...) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @SUPP_BANK_SEL(i32) #1

declare dso_local i32 @SUPP_REG_RD(i32, i64) #1

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @show_stack(i32*, i64*) #1

declare dso_local i64 @__get_user(i8 zeroext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
