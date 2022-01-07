; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_interrupts_and_traps.c_try_deliver_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_interrupts_and_traps.c_try_deliver_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg_cpu = type { %struct.TYPE_8__*, i32, %struct.TYPE_6__, i64, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.desc_struct* }
%struct.desc_struct = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@LGUEST_IRQS = common dso_local global i32 0, align 4
@X86_EFLAGS_IF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Re-enabling interrupts\00", align 1
@FIRST_EXTERNAL_VECTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @try_deliver_interrupt(%struct.lg_cpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lg_cpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.desc_struct*, align 8
  %8 = alloca i64, align 8
  store %struct.lg_cpu* %0, %struct.lg_cpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @LGUEST_IRQS, align 4
  %11 = icmp uge i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.lg_cpu*, %struct.lg_cpu** %4, align 8
  %15 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %14, i32 0, i32 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.lg_cpu*, %struct.lg_cpu** %4, align 8
  %20 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %18, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %3
  %26 = load %struct.lg_cpu*, %struct.lg_cpu** %4, align 8
  %27 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %26, i32 0, i32 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.lg_cpu*, %struct.lg_cpu** %4, align 8
  %32 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %30, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %128

38:                                               ; preds = %25, %3
  %39 = load %struct.lg_cpu*, %struct.lg_cpu** %4, align 8
  %40 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %38
  %44 = load i32, i32* @X86_EFLAGS_IF, align 4
  %45 = load %struct.lg_cpu*, %struct.lg_cpu** %4, align 8
  %46 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = call i64 @put_user(i32 %44, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load %struct.lg_cpu*, %struct.lg_cpu** %4, align 8
  %55 = call i32 @kill_guest(%struct.lg_cpu* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %43
  %57 = load %struct.lg_cpu*, %struct.lg_cpu** %4, align 8
  %58 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  br label %83

59:                                               ; preds = %38
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.lg_cpu*, %struct.lg_cpu** %4, align 8
  %62 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = call i64 @get_user(i64 %60, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  store i64 0, i64* %8, align 8
  br label %70

70:                                               ; preds = %69, %59
  %71 = load i64, i64* %8, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* @X86_EFLAGS_IF, align 4
  %75 = load %struct.lg_cpu*, %struct.lg_cpu** %4, align 8
  %76 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = call i64 @put_user(i32 %74, i32* %80)
  br label %128

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %56
  %84 = load %struct.lg_cpu*, %struct.lg_cpu** %4, align 8
  %85 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load %struct.desc_struct*, %struct.desc_struct** %86, align 8
  %88 = load i32, i32* @FIRST_EXTERNAL_VECTOR, align 4
  %89 = load i32, i32* %5, align 4
  %90 = add i32 %88, %89
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %87, i64 %91
  store %struct.desc_struct* %92, %struct.desc_struct** %7, align 8
  %93 = load %struct.desc_struct*, %struct.desc_struct** %7, align 8
  %94 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.desc_struct*, %struct.desc_struct** %7, align 8
  %97 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @idt_present(i32 %95, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %83
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.lg_cpu*, %struct.lg_cpu** %4, align 8
  %104 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @clear_bit(i32 %102, i32 %105)
  %107 = load %struct.lg_cpu*, %struct.lg_cpu** %4, align 8
  %108 = load %struct.desc_struct*, %struct.desc_struct** %7, align 8
  %109 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.desc_struct*, %struct.desc_struct** %7, align 8
  %112 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @set_guest_interrupt(%struct.lg_cpu* %107, i32 %110, i32 %113, i32 0)
  br label %115

115:                                              ; preds = %101, %83
  %116 = load %struct.lg_cpu*, %struct.lg_cpu** %4, align 8
  %117 = call i32 @write_timestamp(%struct.lg_cpu* %116)
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %128, label %120

120:                                              ; preds = %115
  %121 = load %struct.lg_cpu*, %struct.lg_cpu** %4, align 8
  %122 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %121, i32 0, i32 0
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = call i64 @put_user(i32 0, i32* %126)
  br label %128

128:                                              ; preds = %37, %73, %120, %115
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @put_user(i32, i32*) #1

declare dso_local i32 @kill_guest(%struct.lg_cpu*, i8*) #1

declare dso_local i64 @get_user(i64, i32*) #1

declare dso_local i64 @idt_present(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @set_guest_interrupt(%struct.lg_cpu*, i32, i32, i32) #1

declare dso_local i32 @write_timestamp(%struct.lg_cpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
