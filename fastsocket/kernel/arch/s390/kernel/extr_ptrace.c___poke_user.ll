; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_ptrace.c___poke_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_ptrace.c___poke_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, i32, i32 }
%struct.user = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, i32*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i32 }

@psw_user_bits = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PSW_ADDR_AMODE = common dso_local global i64 0, align 8
@FPC_VALID_MASK = common dso_local global i64 0, align 8
@BITS_PER_LONG = common dso_local global i32 0, align 4
@psw_user32_bits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i64, i64)* @__poke_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__poke_user(%struct.task_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.user*, align 8
  %9 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.user* null, %struct.user** %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.user*, %struct.user** %8, align 8
  %12 = getelementptr inbounds %struct.user, %struct.user* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 3
  %14 = ptrtoint i32** %13 to i64
  %15 = icmp slt i64 %10, %14
  br i1 %15, label %16, label %54

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.user*, %struct.user** %8, align 8
  %19 = getelementptr inbounds %struct.user, %struct.user* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = ptrtoint i32* %21 to i64
  %23 = icmp eq i64 %17, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %16
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* @psw_user_bits, align 4
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @PSW_MASK_MERGE(i32 %26, i64 %27)
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %171

33:                                               ; preds = %24, %16
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.user*, %struct.user** %8, align 8
  %36 = getelementptr inbounds %struct.user, %struct.user* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = ptrtoint i32* %38 to i64
  %40 = icmp eq i64 %34, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i64, i64* @PSW_ADDR_AMODE, align 8
  %43 = load i64, i64* %7, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %41, %33
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %48 = call %struct.TYPE_10__* @task_pt_regs(%struct.task_struct* %47)
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = ptrtoint i32* %49 to i64
  %51 = load i64, i64* %6, align 8
  %52 = add nsw i64 %50, %51
  %53 = inttoptr i64 %52 to i64*
  store i64 %46, i64* %53, align 8
  br label %168

54:                                               ; preds = %3
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.user*, %struct.user** %8, align 8
  %57 = getelementptr inbounds %struct.user, %struct.user* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = ptrtoint i32* %58 to i64
  %60 = icmp slt i64 %55, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %54
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.user*, %struct.user** %8, align 8
  %64 = getelementptr inbounds %struct.user, %struct.user* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 3
  %66 = ptrtoint i32** %65 to i64
  %67 = sub nsw i64 %62, %66
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %70 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = ptrtoint i32** %71 to i64
  %73 = load i64, i64* %9, align 8
  %74 = add nsw i64 %72, %73
  %75 = inttoptr i64 %74 to i64*
  store i64 %68, i64* %75, align 8
  br label %167

76:                                               ; preds = %54
  %77 = load i64, i64* %6, align 8
  %78 = load %struct.user*, %struct.user** %8, align 8
  %79 = getelementptr inbounds %struct.user, %struct.user* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = ptrtoint i32* %80 to i64
  %82 = icmp eq i64 %77, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i64, i64* %7, align 8
  %85 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %86 = call %struct.TYPE_10__* @task_pt_regs(%struct.task_struct* %85)
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  store i64 %84, i64* %87, align 8
  br label %166

88:                                               ; preds = %76
  %89 = load i64, i64* %6, align 8
  %90 = load %struct.user*, %struct.user** %8, align 8
  %91 = getelementptr inbounds %struct.user, %struct.user* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = ptrtoint %struct.TYPE_7__* %92 to i64
  %94 = icmp slt i64 %89, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  store i32 0, i32* %4, align 4
  br label %171

96:                                               ; preds = %88
  %97 = load i64, i64* %6, align 8
  %98 = load %struct.user*, %struct.user** %8, align 8
  %99 = getelementptr inbounds %struct.user, %struct.user* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 1
  %102 = ptrtoint %struct.TYPE_7__* %101 to i64
  %103 = icmp slt i64 %97, %102
  br i1 %103, label %104, label %140

104:                                              ; preds = %96
  %105 = load i64, i64* %6, align 8
  %106 = load %struct.user*, %struct.user** %8, align 8
  %107 = getelementptr inbounds %struct.user, %struct.user* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = ptrtoint i32* %109 to i64
  %111 = icmp eq i64 %105, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %104
  %113 = load i64, i64* %7, align 8
  %114 = load i64, i64* @FPC_VALID_MASK, align 8
  %115 = load i32, i32* @BITS_PER_LONG, align 4
  %116 = sub nsw i32 %115, 32
  %117 = zext i32 %116 to i64
  %118 = shl i64 %114, %117
  %119 = xor i64 %118, -1
  %120 = and i64 %113, %119
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %112
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %4, align 4
  br label %171

125:                                              ; preds = %112, %104
  %126 = load i64, i64* %6, align 8
  %127 = load %struct.user*, %struct.user** %8, align 8
  %128 = getelementptr inbounds %struct.user, %struct.user* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = ptrtoint %struct.TYPE_7__* %129 to i64
  %131 = sub nsw i64 %126, %130
  store i64 %131, i64* %9, align 8
  %132 = load i64, i64* %7, align 8
  %133 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %134 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  %136 = ptrtoint i32* %135 to i64
  %137 = load i64, i64* %9, align 8
  %138 = add nsw i64 %136, %137
  %139 = inttoptr i64 %138 to i64*
  store i64 %132, i64* %139, align 8
  br label %164

140:                                              ; preds = %96
  %141 = load i64, i64* %6, align 8
  %142 = load %struct.user*, %struct.user** %8, align 8
  %143 = getelementptr inbounds %struct.user, %struct.user* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = ptrtoint i32* %145 to i64
  %147 = icmp slt i64 %141, %146
  br i1 %147, label %148, label %163

148:                                              ; preds = %140
  %149 = load i64, i64* %6, align 8
  %150 = load %struct.user*, %struct.user** %8, align 8
  %151 = getelementptr inbounds %struct.user, %struct.user* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = ptrtoint i32* %152 to i64
  %154 = sub nsw i64 %149, %153
  store i64 %154, i64* %9, align 8
  %155 = load i64, i64* %7, align 8
  %156 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %157 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = ptrtoint i32* %158 to i64
  %160 = load i64, i64* %9, align 8
  %161 = add nsw i64 %159, %160
  %162 = inttoptr i64 %161 to i64*
  store i64 %155, i64* %162, align 8
  br label %163

163:                                              ; preds = %148, %140
  br label %164

164:                                              ; preds = %163, %125
  br label %165

165:                                              ; preds = %164
  br label %166

166:                                              ; preds = %165, %83
  br label %167

167:                                              ; preds = %166, %61
  br label %168

168:                                              ; preds = %167, %45
  %169 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %170 = call i32 @FixPerRegisters(%struct.task_struct* %169)
  store i32 0, i32* %4, align 4
  br label %171

171:                                              ; preds = %168, %122, %95, %30
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i64 @PSW_MASK_MERGE(i32, i64) #1

declare dso_local %struct.TYPE_10__* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i32 @FixPerRegisters(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
