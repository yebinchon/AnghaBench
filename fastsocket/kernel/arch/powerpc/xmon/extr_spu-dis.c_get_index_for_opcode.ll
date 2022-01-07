; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_spu-dis.c_get_index_for_opcode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_spu-dis.c_get_index_for_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_opcode = type { i64 }

@spu_disassemble_table = common dso_local global %struct.spu_opcode** null, align 8
@RRR = common dso_local global i64 0, align 8
@RI18 = common dso_local global i64 0, align 8
@LBT = common dso_local global i64 0, align 8
@RI10 = common dso_local global i64 0, align 8
@RI16 = common dso_local global i64 0, align 8
@RI8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.spu_opcode* (i32)* @get_index_for_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.spu_opcode* @get_index_for_opcode(i32 %0) #0 {
  %2 = alloca %struct.spu_opcode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.spu_opcode*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = lshr i32 %6, 21
  store i32 %7, i32* %5, align 4
  %8 = load %struct.spu_opcode**, %struct.spu_opcode*** @spu_disassemble_table, align 8
  %9 = getelementptr inbounds %struct.spu_opcode*, %struct.spu_opcode** %8, i64 0
  %10 = load %struct.spu_opcode*, %struct.spu_opcode** %9, align 8
  %11 = icmp eq %struct.spu_opcode* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 (...) @init_spu_disassemble()
  br label %14

14:                                               ; preds = %12, %1
  %15 = load %struct.spu_opcode**, %struct.spu_opcode*** @spu_disassemble_table, align 8
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 1920
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.spu_opcode*, %struct.spu_opcode** %15, i64 %18
  %20 = load %struct.spu_opcode*, %struct.spu_opcode** %19, align 8
  store %struct.spu_opcode* %20, %struct.spu_opcode** %4, align 8
  %21 = icmp ne %struct.spu_opcode* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  %23 = load %struct.spu_opcode*, %struct.spu_opcode** %4, align 8
  %24 = getelementptr inbounds %struct.spu_opcode, %struct.spu_opcode* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RRR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load %struct.spu_opcode*, %struct.spu_opcode** %4, align 8
  store %struct.spu_opcode* %29, %struct.spu_opcode** %2, align 8
  br label %111

30:                                               ; preds = %22, %14
  %31 = load %struct.spu_opcode**, %struct.spu_opcode*** @spu_disassemble_table, align 8
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 2032
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.spu_opcode*, %struct.spu_opcode** %31, i64 %34
  %36 = load %struct.spu_opcode*, %struct.spu_opcode** %35, align 8
  store %struct.spu_opcode* %36, %struct.spu_opcode** %4, align 8
  %37 = icmp ne %struct.spu_opcode* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %30
  %39 = load %struct.spu_opcode*, %struct.spu_opcode** %4, align 8
  %40 = getelementptr inbounds %struct.spu_opcode, %struct.spu_opcode* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RI18, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.spu_opcode*, %struct.spu_opcode** %4, align 8
  %46 = getelementptr inbounds %struct.spu_opcode, %struct.spu_opcode* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LBT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44, %38
  %51 = load %struct.spu_opcode*, %struct.spu_opcode** %4, align 8
  store %struct.spu_opcode* %51, %struct.spu_opcode** %2, align 8
  br label %111

52:                                               ; preds = %44, %30
  %53 = load %struct.spu_opcode**, %struct.spu_opcode*** @spu_disassemble_table, align 8
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, 2040
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.spu_opcode*, %struct.spu_opcode** %53, i64 %56
  %58 = load %struct.spu_opcode*, %struct.spu_opcode** %57, align 8
  store %struct.spu_opcode* %58, %struct.spu_opcode** %4, align 8
  %59 = icmp ne %struct.spu_opcode* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %52
  %61 = load %struct.spu_opcode*, %struct.spu_opcode** %4, align 8
  %62 = getelementptr inbounds %struct.spu_opcode, %struct.spu_opcode* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RI10, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load %struct.spu_opcode*, %struct.spu_opcode** %4, align 8
  store %struct.spu_opcode* %67, %struct.spu_opcode** %2, align 8
  br label %111

68:                                               ; preds = %60, %52
  %69 = load %struct.spu_opcode**, %struct.spu_opcode*** @spu_disassemble_table, align 8
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, 2044
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.spu_opcode*, %struct.spu_opcode** %69, i64 %72
  %74 = load %struct.spu_opcode*, %struct.spu_opcode** %73, align 8
  store %struct.spu_opcode* %74, %struct.spu_opcode** %4, align 8
  %75 = icmp ne %struct.spu_opcode* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %68
  %77 = load %struct.spu_opcode*, %struct.spu_opcode** %4, align 8
  %78 = getelementptr inbounds %struct.spu_opcode, %struct.spu_opcode* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @RI16, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load %struct.spu_opcode*, %struct.spu_opcode** %4, align 8
  store %struct.spu_opcode* %83, %struct.spu_opcode** %2, align 8
  br label %111

84:                                               ; preds = %76, %68
  %85 = load %struct.spu_opcode**, %struct.spu_opcode*** @spu_disassemble_table, align 8
  %86 = load i32, i32* %5, align 4
  %87 = and i32 %86, 2046
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.spu_opcode*, %struct.spu_opcode** %85, i64 %88
  %90 = load %struct.spu_opcode*, %struct.spu_opcode** %89, align 8
  store %struct.spu_opcode* %90, %struct.spu_opcode** %4, align 8
  %91 = icmp ne %struct.spu_opcode* %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %84
  %93 = load %struct.spu_opcode*, %struct.spu_opcode** %4, align 8
  %94 = getelementptr inbounds %struct.spu_opcode, %struct.spu_opcode* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @RI8, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load %struct.spu_opcode*, %struct.spu_opcode** %4, align 8
  store %struct.spu_opcode* %99, %struct.spu_opcode** %2, align 8
  br label %111

100:                                              ; preds = %92, %84
  %101 = load %struct.spu_opcode**, %struct.spu_opcode*** @spu_disassemble_table, align 8
  %102 = load i32, i32* %5, align 4
  %103 = and i32 %102, 2047
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.spu_opcode*, %struct.spu_opcode** %101, i64 %104
  %106 = load %struct.spu_opcode*, %struct.spu_opcode** %105, align 8
  store %struct.spu_opcode* %106, %struct.spu_opcode** %4, align 8
  %107 = icmp ne %struct.spu_opcode* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = load %struct.spu_opcode*, %struct.spu_opcode** %4, align 8
  store %struct.spu_opcode* %109, %struct.spu_opcode** %2, align 8
  br label %111

110:                                              ; preds = %100
  store %struct.spu_opcode* null, %struct.spu_opcode** %2, align 8
  br label %111

111:                                              ; preds = %110, %108, %98, %82, %66, %50, %28
  %112 = load %struct.spu_opcode*, %struct.spu_opcode** %2, align 8
  ret %struct.spu_opcode* %112
}

declare dso_local i32 @init_spu_disassemble(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
