; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_dis.c_find_insn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_dis.c_find_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn = type { i64, i8 }

@opcode_01 = common dso_local global %struct.insn* null, align 8
@opcode_a5 = common dso_local global %struct.insn* null, align 8
@opcode_a7 = common dso_local global %struct.insn* null, align 8
@opcode_b2 = common dso_local global %struct.insn* null, align 8
@opcode_b3 = common dso_local global %struct.insn* null, align 8
@opcode_b9 = common dso_local global %struct.insn* null, align 8
@opcode_c0 = common dso_local global %struct.insn* null, align 8
@opcode_c2 = common dso_local global %struct.insn* null, align 8
@opcode_c8 = common dso_local global %struct.insn* null, align 8
@opcode_e3 = common dso_local global %struct.insn* null, align 8
@opcode_e5 = common dso_local global %struct.insn* null, align 8
@opcode_eb = common dso_local global %struct.insn* null, align 8
@opcode_ec = common dso_local global %struct.insn* null, align 8
@opcode_ed = common dso_local global %struct.insn* null, align 8
@opcode = common dso_local global %struct.insn* null, align 8
@INSTR_INVALID = common dso_local global i64 0, align 8
@formats = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.insn* (i8*)* @find_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.insn* @find_insn(i8* %0) #0 {
  %2 = alloca %struct.insn*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca %struct.insn*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 1
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %4, align 1
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  switch i32 %13, label %54 [
    i32 1, label %14
    i32 165, label %16
    i32 167, label %18
    i32 178, label %20
    i32 179, label %22
    i32 185, label %24
    i32 192, label %26
    i32 194, label %28
    i32 200, label %30
    i32 227, label %32
    i32 229, label %37
    i32 235, label %39
    i32 236, label %44
    i32 237, label %49
  ]

14:                                               ; preds = %1
  %15 = load %struct.insn*, %struct.insn** @opcode_01, align 8
  store %struct.insn* %15, %struct.insn** %6, align 8
  br label %59

16:                                               ; preds = %1
  %17 = load %struct.insn*, %struct.insn** @opcode_a5, align 8
  store %struct.insn* %17, %struct.insn** %6, align 8
  br label %59

18:                                               ; preds = %1
  %19 = load %struct.insn*, %struct.insn** @opcode_a7, align 8
  store %struct.insn* %19, %struct.insn** %6, align 8
  br label %59

20:                                               ; preds = %1
  %21 = load %struct.insn*, %struct.insn** @opcode_b2, align 8
  store %struct.insn* %21, %struct.insn** %6, align 8
  br label %59

22:                                               ; preds = %1
  %23 = load %struct.insn*, %struct.insn** @opcode_b3, align 8
  store %struct.insn* %23, %struct.insn** %6, align 8
  br label %59

24:                                               ; preds = %1
  %25 = load %struct.insn*, %struct.insn** @opcode_b9, align 8
  store %struct.insn* %25, %struct.insn** %6, align 8
  br label %59

26:                                               ; preds = %1
  %27 = load %struct.insn*, %struct.insn** @opcode_c0, align 8
  store %struct.insn* %27, %struct.insn** %6, align 8
  br label %59

28:                                               ; preds = %1
  %29 = load %struct.insn*, %struct.insn** @opcode_c2, align 8
  store %struct.insn* %29, %struct.insn** %6, align 8
  br label %59

30:                                               ; preds = %1
  %31 = load %struct.insn*, %struct.insn** @opcode_c8, align 8
  store %struct.insn* %31, %struct.insn** %6, align 8
  br label %59

32:                                               ; preds = %1
  %33 = load %struct.insn*, %struct.insn** @opcode_e3, align 8
  store %struct.insn* %33, %struct.insn** %6, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 5
  %36 = load i8, i8* %35, align 1
  store i8 %36, i8* %4, align 1
  br label %59

37:                                               ; preds = %1
  %38 = load %struct.insn*, %struct.insn** @opcode_e5, align 8
  store %struct.insn* %38, %struct.insn** %6, align 8
  br label %59

39:                                               ; preds = %1
  %40 = load %struct.insn*, %struct.insn** @opcode_eb, align 8
  store %struct.insn* %40, %struct.insn** %6, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 5
  %43 = load i8, i8* %42, align 1
  store i8 %43, i8* %4, align 1
  br label %59

44:                                               ; preds = %1
  %45 = load %struct.insn*, %struct.insn** @opcode_ec, align 8
  store %struct.insn* %45, %struct.insn** %6, align 8
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 5
  %48 = load i8, i8* %47, align 1
  store i8 %48, i8* %4, align 1
  br label %59

49:                                               ; preds = %1
  %50 = load %struct.insn*, %struct.insn** @opcode_ed, align 8
  store %struct.insn* %50, %struct.insn** %6, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 5
  %53 = load i8, i8* %52, align 1
  store i8 %53, i8* %4, align 1
  br label %59

54:                                               ; preds = %1
  %55 = load %struct.insn*, %struct.insn** @opcode, align 8
  store %struct.insn* %55, %struct.insn** %6, align 8
  %56 = load i8*, i8** %3, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  store i8 %58, i8* %4, align 1
  br label %59

59:                                               ; preds = %54, %49, %44, %39, %37, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14
  br label %60

60:                                               ; preds = %87, %59
  %61 = load %struct.insn*, %struct.insn** %6, align 8
  %62 = getelementptr inbounds %struct.insn, %struct.insn* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @INSTR_INVALID, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %90

66:                                               ; preds = %60
  %67 = load i8**, i8*** @formats, align 8
  %68 = load %struct.insn*, %struct.insn** %6, align 8
  %69 = getelementptr inbounds %struct.insn, %struct.insn* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i8*, i8** %67, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  store i8 %74, i8* %5, align 1
  %75 = load %struct.insn*, %struct.insn** %6, align 8
  %76 = getelementptr inbounds %struct.insn, %struct.insn* %75, i32 0, i32 1
  %77 = load i8, i8* %76, align 8
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* %4, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* %5, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %80, %82
  %84 = icmp eq i32 %78, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %66
  %86 = load %struct.insn*, %struct.insn** %6, align 8
  store %struct.insn* %86, %struct.insn** %2, align 8
  br label %91

87:                                               ; preds = %66
  %88 = load %struct.insn*, %struct.insn** %6, align 8
  %89 = getelementptr inbounds %struct.insn, %struct.insn* %88, i32 1
  store %struct.insn* %89, %struct.insn** %6, align 8
  br label %60

90:                                               ; preds = %60
  store %struct.insn* null, %struct.insn** %2, align 8
  br label %91

91:                                               ; preds = %90, %85
  %92 = load %struct.insn*, %struct.insn** %2, align 8
  ret %struct.insn* %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
