; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_ptrace.c___peek_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_ptrace.c___peek_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i64* }
%struct.user = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, i32*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 }

@PSW_MASK_PER = common dso_local global i64 0, align 8
@FPC_VALID_MASK = common dso_local global i64 0, align 8
@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.task_struct*, i64)* @__peek_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__peek_user(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.user*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.user* null, %struct.user** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.user*, %struct.user** %5, align 8
  %10 = getelementptr inbounds %struct.user, %struct.user* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  %12 = ptrtoint i32** %11 to i64
  %13 = icmp slt i64 %8, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %2
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = call %struct.TYPE_10__* @task_pt_regs(%struct.task_struct* %15)
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = ptrtoint i32* %17 to i64
  %19 = load i64, i64* %4, align 8
  %20 = add nsw i64 %18, %19
  %21 = inttoptr i64 %20 to i64*
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.user*, %struct.user** %5, align 8
  %25 = getelementptr inbounds %struct.user, %struct.user* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = ptrtoint i32* %27 to i64
  %29 = icmp eq i64 %23, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %14
  %31 = load i64, i64* @PSW_MASK_PER, align 8
  %32 = xor i64 %31, -1
  %33 = load i64, i64* %7, align 8
  %34 = and i64 %33, %32
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %30, %14
  br label %146

36:                                               ; preds = %2
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.user*, %struct.user** %5, align 8
  %39 = getelementptr inbounds %struct.user, %struct.user* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = ptrtoint i32* %40 to i64
  %42 = icmp slt i64 %37, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %36
  %44 = load i64, i64* %4, align 8
  %45 = load %struct.user*, %struct.user** %5, align 8
  %46 = getelementptr inbounds %struct.user, %struct.user* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  %48 = ptrtoint i32** %47 to i64
  %49 = sub nsw i64 %44, %48
  store i64 %49, i64* %6, align 8
  %50 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %51 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = ptrtoint i64** %52 to i64
  %54 = load i64, i64* %6, align 8
  %55 = add nsw i64 %53, %54
  %56 = inttoptr i64 %55 to i64*
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %7, align 8
  br label %145

58:                                               ; preds = %36
  %59 = load i64, i64* %4, align 8
  %60 = load %struct.user*, %struct.user** %5, align 8
  %61 = getelementptr inbounds %struct.user, %struct.user* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = ptrtoint i32* %62 to i64
  %64 = icmp eq i64 %59, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %67 = call %struct.TYPE_10__* @task_pt_regs(%struct.task_struct* %66)
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %7, align 8
  br label %144

70:                                               ; preds = %58
  %71 = load i64, i64* %4, align 8
  %72 = load %struct.user*, %struct.user** %5, align 8
  %73 = getelementptr inbounds %struct.user, %struct.user* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = ptrtoint %struct.TYPE_7__* %74 to i64
  %76 = icmp slt i64 %71, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i64 0, i64* %7, align 8
  br label %143

78:                                               ; preds = %70
  %79 = load i64, i64* %4, align 8
  %80 = load %struct.user*, %struct.user** %5, align 8
  %81 = getelementptr inbounds %struct.user, %struct.user* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 1
  %84 = ptrtoint %struct.TYPE_7__* %83 to i64
  %85 = icmp slt i64 %79, %84
  br i1 %85, label %86, label %117

86:                                               ; preds = %78
  %87 = load i64, i64* %4, align 8
  %88 = load %struct.user*, %struct.user** %5, align 8
  %89 = getelementptr inbounds %struct.user, %struct.user* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = ptrtoint %struct.TYPE_7__* %90 to i64
  %92 = sub nsw i64 %87, %91
  store i64 %92, i64* %6, align 8
  %93 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %94 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = ptrtoint i32* %95 to i64
  %97 = load i64, i64* %6, align 8
  %98 = add nsw i64 %96, %97
  %99 = inttoptr i64 %98 to i64*
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %7, align 8
  %101 = load i64, i64* %4, align 8
  %102 = load %struct.user*, %struct.user** %5, align 8
  %103 = getelementptr inbounds %struct.user, %struct.user* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = ptrtoint i32* %105 to i64
  %107 = icmp eq i64 %101, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %86
  %109 = load i64, i64* @FPC_VALID_MASK, align 8
  %110 = load i32, i32* @BITS_PER_LONG, align 4
  %111 = sub nsw i32 %110, 32
  %112 = zext i32 %111 to i64
  %113 = shl i64 %109, %112
  %114 = load i64, i64* %7, align 8
  %115 = and i64 %114, %113
  store i64 %115, i64* %7, align 8
  br label %116

116:                                              ; preds = %108, %86
  br label %142

117:                                              ; preds = %78
  %118 = load i64, i64* %4, align 8
  %119 = load %struct.user*, %struct.user** %5, align 8
  %120 = getelementptr inbounds %struct.user, %struct.user* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = ptrtoint i32* %122 to i64
  %124 = icmp slt i64 %118, %123
  br i1 %124, label %125, label %140

125:                                              ; preds = %117
  %126 = load i64, i64* %4, align 8
  %127 = load %struct.user*, %struct.user** %5, align 8
  %128 = getelementptr inbounds %struct.user, %struct.user* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = ptrtoint i32* %129 to i64
  %131 = sub nsw i64 %126, %130
  store i64 %131, i64* %6, align 8
  %132 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %133 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = ptrtoint i32* %134 to i64
  %136 = load i64, i64* %6, align 8
  %137 = add nsw i64 %135, %136
  %138 = inttoptr i64 %137 to i64*
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %7, align 8
  br label %141

140:                                              ; preds = %117
  store i64 0, i64* %7, align 8
  br label %141

141:                                              ; preds = %140, %125
  br label %142

142:                                              ; preds = %141, %116
  br label %143

143:                                              ; preds = %142, %77
  br label %144

144:                                              ; preds = %143, %65
  br label %145

145:                                              ; preds = %144, %43
  br label %146

146:                                              ; preds = %145, %35
  %147 = load i64, i64* %7, align 8
  ret i64 %147
}

declare dso_local %struct.TYPE_10__* @task_pt_regs(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
