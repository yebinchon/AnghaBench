; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip27/extr_ip27-nmi.c_nmi_cpu_eframe_save.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip27/extr_ip27-nmi.c_nmi_cpu_eframe_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_struct = type { i32, i32, i32, i32, i32, i64*, i64, i64 }

@IP27_NMI_KREGS_OFFSET = common dso_local global i32 0, align 4
@IP27_NMI_KREGS_CPU_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"NMI nasid %d: slice %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"$%2d   :\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" %016lx\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Hi    : (value lost)\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Lo    : (value lost)\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"epc   : %016lx %pS\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"ErrEPC: %016lx %pS\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"ra    : %016lx %pS\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Status: %08lx         \00", align 1
@ST0_KX = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"KX \00", align 1
@ST0_SX = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"SX \09\00", align 1
@ST0_UX = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [4 x i8] c"UX \00", align 1
@ST0_KSU = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"USER \00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"SUPERVISOR \00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"KERNEL \00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"BAD_MODE \00", align 1
@ST0_ERL = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"ERL \00", align 1
@ST0_EXL = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"EXL \00", align 1
@ST0_IE = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [4 x i8] c"IE \00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"Cause : %08lx\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"PrId  : %08x\0A\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"BadVA : %016lx\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"CErr  : %016lx\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"NMI_SR: %016lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nmi_cpu_eframe_save(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.reg_struct*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @IP27_NMI_KREGS_OFFSET, align 4
  %9 = call i32 @TO_NODE(i32 %7, i32 %8)
  %10 = call i64 @TO_UNCAC(i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @IP27_NMI_KREGS_CPU_SIZE, align 4
  %13 = mul nsw i32 %11, %12
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %10, %14
  %16 = inttoptr i64 %15 to %struct.reg_struct*
  store %struct.reg_struct* %16, %struct.reg_struct** %5, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %46, %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 32
  br i1 %22, label %23, label %47

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = srem i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27, %23
  %31 = load %struct.reg_struct*, %struct.reg_struct** %5, align 8
  %32 = getelementptr inbounds %struct.reg_struct, %struct.reg_struct* %31, i32 0, i32 5
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = srem i32 %41, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %30
  br label %20

47:                                               ; preds = %20
  %48 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %49 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %50 = load %struct.reg_struct*, %struct.reg_struct** %5, align 8
  %51 = getelementptr inbounds %struct.reg_struct, %struct.reg_struct* %50, i32 0, i32 7
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.reg_struct*, %struct.reg_struct** %5, align 8
  %54 = getelementptr inbounds %struct.reg_struct, %struct.reg_struct* %53, i32 0, i32 7
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64 %52, i8* %56)
  %58 = call i32 (...) @print_tainted()
  %59 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %58)
  %60 = load %struct.reg_struct*, %struct.reg_struct** %5, align 8
  %61 = getelementptr inbounds %struct.reg_struct, %struct.reg_struct* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.reg_struct*, %struct.reg_struct** %5, align 8
  %64 = getelementptr inbounds %struct.reg_struct, %struct.reg_struct* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i64 %62, i8* %66)
  %68 = load %struct.reg_struct*, %struct.reg_struct** %5, align 8
  %69 = getelementptr inbounds %struct.reg_struct, %struct.reg_struct* %68, i32 0, i32 5
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 31
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.reg_struct*, %struct.reg_struct** %5, align 8
  %74 = getelementptr inbounds %struct.reg_struct, %struct.reg_struct* %73, i32 0, i32 5
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 31
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i64 %72, i8* %78)
  %80 = load %struct.reg_struct*, %struct.reg_struct** %5, align 8
  %81 = getelementptr inbounds %struct.reg_struct, %struct.reg_struct* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %82)
  %84 = load %struct.reg_struct*, %struct.reg_struct** %5, align 8
  %85 = getelementptr inbounds %struct.reg_struct, %struct.reg_struct* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @ST0_KX, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %47
  %91 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %47
  %93 = load %struct.reg_struct*, %struct.reg_struct** %5, align 8
  %94 = getelementptr inbounds %struct.reg_struct, %struct.reg_struct* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @ST0_SX, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %92
  %102 = load %struct.reg_struct*, %struct.reg_struct** %5, align 8
  %103 = getelementptr inbounds %struct.reg_struct, %struct.reg_struct* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @ST0_UX, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %101
  %111 = load %struct.reg_struct*, %struct.reg_struct** %5, align 8
  %112 = getelementptr inbounds %struct.reg_struct, %struct.reg_struct* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @ST0_KSU, align 4
  %115 = and i32 %113, %114
  switch i32 %115, label %122 [
    i32 128, label %116
    i32 129, label %118
    i32 130, label %120
  ]

116:                                              ; preds = %110
  %117 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  br label %124

118:                                              ; preds = %110
  %119 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  br label %124

120:                                              ; preds = %110
  %121 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  br label %124

122:                                              ; preds = %110
  %123 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %120, %118, %116
  %125 = load %struct.reg_struct*, %struct.reg_struct** %5, align 8
  %126 = getelementptr inbounds %struct.reg_struct, %struct.reg_struct* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @ST0_ERL, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %124
  %134 = load %struct.reg_struct*, %struct.reg_struct** %5, align 8
  %135 = getelementptr inbounds %struct.reg_struct, %struct.reg_struct* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @ST0_EXL, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %133
  %141 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %133
  %143 = load %struct.reg_struct*, %struct.reg_struct** %5, align 8
  %144 = getelementptr inbounds %struct.reg_struct, %struct.reg_struct* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @ST0_IE, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  br label %151

151:                                              ; preds = %149, %142
  %152 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %153 = load %struct.reg_struct*, %struct.reg_struct** %5, align 8
  %154 = getelementptr inbounds %struct.reg_struct, %struct.reg_struct* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 %155)
  %157 = call i32 (...) @read_c0_prid()
  %158 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32 %157)
  %159 = load %struct.reg_struct*, %struct.reg_struct** %5, align 8
  %160 = getelementptr inbounds %struct.reg_struct, %struct.reg_struct* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i32 %161)
  %163 = load %struct.reg_struct*, %struct.reg_struct** %5, align 8
  %164 = getelementptr inbounds %struct.reg_struct, %struct.reg_struct* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i32 %165)
  %167 = load %struct.reg_struct*, %struct.reg_struct** %5, align 8
  %168 = getelementptr inbounds %struct.reg_struct, %struct.reg_struct* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i32 %169)
  %171 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i64 @TO_UNCAC(i32) #1

declare dso_local i32 @TO_NODE(i32, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @print_tainted(...) #1

declare dso_local i32 @read_c0_prid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
