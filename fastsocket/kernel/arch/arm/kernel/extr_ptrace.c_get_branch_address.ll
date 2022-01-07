; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_ptrace.c_get_branch_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_ptrace.c_get_branch_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@REG_PSR = common dso_local global i64 0, align 8
@PSR_C_BIT = common dso_local global i64 0, align 8
@OP_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.task_struct*, i64, i64)* @get_branch_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_branch_address(%struct.task_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = and i64 %16, 234881024
  switch i64 %17, label %202 [
    i64 0, label %18
    i64 33554432, label %18
    i64 67108864, label %105
    i64 100663296, label %105
    i64 134217728, label %146
    i64 167772160, label %185
  ]

18:                                               ; preds = %3, %3
  %19 = load i64, i64* %6, align 8
  %20 = and i64 %19, 268435408
  %21 = icmp eq i64 %20, 19922704
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %24 = load i64, i64* %6, align 8
  %25 = and i64 %24, 15
  %26 = call i64 @get_user_reg(%struct.task_struct* %23, i64 %25)
  store i64 %26, i64* %7, align 8
  br label %202

27:                                               ; preds = %18
  %28 = load i64, i64* %6, align 8
  %29 = and i64 %28, 61440
  %30 = icmp ne i64 %29, 61440
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %202

32:                                               ; preds = %27
  %33 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i8* @ptrace_getrn(%struct.task_struct* %33, i64 %34)
  %36 = ptrtoint i8* %35 to i64
  store i64 %36, i64* %8, align 8
  %37 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @ptrace_getaluop2(%struct.task_struct* %37, i64 %38)
  store i64 %39, i64* %9, align 8
  %40 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %41 = load i64, i64* @REG_PSR, align 8
  %42 = call i64 @get_user_reg(%struct.task_struct* %40, i64 %41)
  %43 = load i64, i64* @PSR_C_BIT, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @OP_MASK, align 8
  %51 = and i64 %49, %50
  switch i64 %51, label %104 [
    i64 137, label %52
    i64 135, label %56
    i64 128, label %60
    i64 131, label %64
    i64 138, label %68
    i64 139, label %72
    i64 129, label %78
    i64 130, label %84
    i64 132, label %90
    i64 134, label %94
    i64 136, label %96
    i64 133, label %101
  ]

52:                                               ; preds = %32
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = and i64 %53, %54
  store i64 %55, i64* %7, align 8
  br label %104

56:                                               ; preds = %32
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = xor i64 %57, %58
  store i64 %59, i64* %7, align 8
  br label %104

60:                                               ; preds = %32
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = sub nsw i64 %61, %62
  store i64 %63, i64* %7, align 8
  br label %104

64:                                               ; preds = %32
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %8, align 8
  %67 = sub nsw i64 %65, %66
  store i64 %67, i64* %7, align 8
  br label %104

68:                                               ; preds = %32
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = add nsw i64 %69, %70
  store i64 %71, i64* %7, align 8
  br label %104

72:                                               ; preds = %32
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %9, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i64, i64* %10, align 8
  %77 = add nsw i64 %75, %76
  store i64 %77, i64* %7, align 8
  br label %104

78:                                               ; preds = %32
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* %9, align 8
  %81 = sub nsw i64 %79, %80
  %82 = load i64, i64* %10, align 8
  %83 = add nsw i64 %81, %82
  store i64 %83, i64* %7, align 8
  br label %104

84:                                               ; preds = %32
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %8, align 8
  %87 = sub nsw i64 %85, %86
  %88 = load i64, i64* %10, align 8
  %89 = add nsw i64 %87, %88
  store i64 %89, i64* %7, align 8
  br label %104

90:                                               ; preds = %32
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* %9, align 8
  %93 = or i64 %91, %92
  store i64 %93, i64* %7, align 8
  br label %104

94:                                               ; preds = %32
  %95 = load i64, i64* %9, align 8
  store i64 %95, i64* %7, align 8
  br label %104

96:                                               ; preds = %32
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* %9, align 8
  %99 = xor i64 %98, -1
  %100 = and i64 %97, %99
  store i64 %100, i64* %7, align 8
  br label %104

101:                                              ; preds = %32
  %102 = load i64, i64* %9, align 8
  %103 = xor i64 %102, -1
  store i64 %103, i64* %7, align 8
  br label %104

104:                                              ; preds = %32, %101, %96, %94, %90, %84, %78, %72, %68, %64, %60, %56, %52
  br label %202

105:                                              ; preds = %3, %3
  %106 = load i64, i64* %6, align 8
  %107 = and i64 %106, 1110016
  %108 = icmp eq i64 %107, 1110016
  br i1 %108, label %109, label %145

109:                                              ; preds = %105
  %110 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %111 = load i64, i64* %6, align 8
  %112 = call i8* @ptrace_getrn(%struct.task_struct* %110, i64 %111)
  %113 = ptrtoint i8* %112 to i64
  store i64 %113, i64* %11, align 8
  %114 = load i64, i64* %6, align 8
  %115 = and i64 %114, 16777216
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %141

117:                                              ; preds = %109
  %118 = load i64, i64* %6, align 8
  %119 = and i64 %118, 33554432
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %123 = load i64, i64* %6, align 8
  %124 = call i64 @ptrace_getldrop2(%struct.task_struct* %122, i64 %123)
  store i64 %124, i64* %12, align 8
  br label %128

125:                                              ; preds = %117
  %126 = load i64, i64* %6, align 8
  %127 = and i64 %126, 4095
  store i64 %127, i64* %12, align 8
  br label %128

128:                                              ; preds = %125, %121
  %129 = load i64, i64* %6, align 8
  %130 = and i64 %129, 8388608
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load i64, i64* %12, align 8
  %134 = load i64, i64* %11, align 8
  %135 = add i64 %134, %133
  store i64 %135, i64* %11, align 8
  br label %140

136:                                              ; preds = %128
  %137 = load i64, i64* %12, align 8
  %138 = load i64, i64* %11, align 8
  %139 = sub i64 %138, %137
  store i64 %139, i64* %11, align 8
  br label %140

140:                                              ; preds = %136, %132
  br label %141

141:                                              ; preds = %140, %109
  %142 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %143 = load i64, i64* %11, align 8
  %144 = call i32 @read_u32(%struct.task_struct* %142, i64 %143, i64* %7)
  br label %145

145:                                              ; preds = %141, %105
  br label %202

146:                                              ; preds = %3
  %147 = load i64, i64* %6, align 8
  %148 = and i64 %147, 1081344
  %149 = icmp eq i64 %148, 1081344
  br i1 %149, label %150, label %184

150:                                              ; preds = %146
  %151 = load i64, i64* %6, align 8
  %152 = and i64 %151, 8388608
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %150
  %155 = load i64, i64* %6, align 8
  %156 = and i64 %155, 65535
  %157 = call i32 @hweight16(i64 %156)
  %158 = shl i32 %157, 2
  store i32 %158, i32* %14, align 4
  %159 = load i64, i64* %6, align 8
  %160 = and i64 %159, 16777216
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %154
  %163 = load i32, i32* %14, align 4
  %164 = sub i32 %163, 4
  store i32 %164, i32* %14, align 4
  br label %165

165:                                              ; preds = %162, %154
  br label %173

166:                                              ; preds = %150
  %167 = load i64, i64* %6, align 8
  %168 = and i64 %167, 16777216
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  store i32 -4, i32* %14, align 4
  br label %172

171:                                              ; preds = %166
  store i32 0, i32* %14, align 4
  br label %172

172:                                              ; preds = %171, %170
  br label %173

173:                                              ; preds = %172, %165
  %174 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %175 = load i64, i64* %6, align 8
  %176 = call i8* @ptrace_getrn(%struct.task_struct* %174, i64 %175)
  %177 = ptrtoint i8* %176 to i64
  store i64 %177, i64* %13, align 8
  %178 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %179 = load i64, i64* %13, align 8
  %180 = load i32, i32* %14, align 4
  %181 = zext i32 %180 to i64
  %182 = add i64 %179, %181
  %183 = call i32 @read_u32(%struct.task_struct* %178, i64 %182, i64* %7)
  br label %202

184:                                              ; preds = %146
  br label %202

185:                                              ; preds = %3
  %186 = load i64, i64* %6, align 8
  %187 = and i64 %186, 16777215
  %188 = shl i64 %187, 8
  store i64 %188, i64* %15, align 8
  %189 = load i64, i64* %15, align 8
  %190 = ashr i64 %189, 6
  %191 = add nsw i64 %190, 8
  store i64 %191, i64* %15, align 8
  %192 = load i64, i64* %15, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %185
  %195 = load i64, i64* %15, align 8
  %196 = icmp ne i64 %195, 4
  br i1 %196, label %197, label %201

197:                                              ; preds = %194
  %198 = load i64, i64* %5, align 8
  %199 = load i64, i64* %15, align 8
  %200 = add i64 %198, %199
  store i64 %200, i64* %7, align 8
  br label %201

201:                                              ; preds = %197, %194, %185
  br label %202

202:                                              ; preds = %3, %201, %184, %173, %145, %104, %31, %22
  %203 = load i64, i64* %7, align 8
  ret i64 %203
}

declare dso_local i64 @get_user_reg(%struct.task_struct*, i64) #1

declare dso_local i8* @ptrace_getrn(%struct.task_struct*, i64) #1

declare dso_local i64 @ptrace_getaluop2(%struct.task_struct*, i64) #1

declare dso_local i64 @ptrace_getldrop2(%struct.task_struct*, i64) #1

declare dso_local i32 @read_u32(%struct.task_struct*, i64, i64*) #1

declare dso_local i32 @hweight16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
