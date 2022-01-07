; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_set_defaults.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, %struct.TYPE_2__*, %struct.TYPE_2__, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@nand_command = common dso_local global i32* null, align 8
@nand_wait = common dso_local global i32* null, align 8
@nand_select_chip = common dso_local global i64 0, align 8
@nand_read_byte16 = common dso_local global i64 0, align 8
@nand_read_byte = common dso_local global i64 0, align 8
@nand_read_word = common dso_local global i64 0, align 8
@nand_block_bad = common dso_local global i64 0, align 8
@nand_default_block_markbad = common dso_local global i64 0, align 8
@nand_write_buf16 = common dso_local global i64 0, align 8
@nand_write_buf = common dso_local global i64 0, align 8
@nand_read_buf16 = common dso_local global i64 0, align 8
@nand_read_buf = common dso_local global i64 0, align 8
@nand_verify_buf16 = common dso_local global i64 0, align 8
@nand_verify_buf = common dso_local global i64 0, align 8
@nand_default_bbt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @nand_set_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nand_set_defaults(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %6 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 0
  store i32 20, i32* %11, align 8
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %14 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %13, i32 0, i32 13
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32*, i32** @nand_command, align 8
  %19 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %20 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %19, i32 0, i32 13
  store i32* %18, i32** %20, align 8
  br label %21

21:                                               ; preds = %17, %12
  %22 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %22, i32 0, i32 12
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32*, i32** @nand_wait, align 8
  %28 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 12
  store i32* %27, i32** %29, align 8
  br label %30

30:                                               ; preds = %26, %21
  %31 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 11
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i64, i64* @nand_select_chip, align 8
  %37 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %38 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %37, i32 0, i32 11
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %41 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %40, i32 0, i32 10
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i64, i64* @nand_read_byte16, align 8
  br label %51

49:                                               ; preds = %44
  %50 = load i64, i64* @nand_read_byte, align 8
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i64 [ %48, %47 ], [ %50, %49 ]
  %53 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %54 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %53, i32 0, i32 10
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %51, %39
  %56 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %57 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %56, i32 0, i32 9
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = load i64, i64* @nand_read_word, align 8
  %62 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %63 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %62, i32 0, i32 9
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %60, %55
  %65 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %66 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %65, i32 0, i32 8
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = load i64, i64* @nand_block_bad, align 8
  %71 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %72 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %71, i32 0, i32 8
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %69, %64
  %74 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %75 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %74, i32 0, i32 7
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = load i64, i64* @nand_default_block_markbad, align 8
  %80 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %81 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %80, i32 0, i32 7
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %78, %73
  %83 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %84 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i64, i64* @nand_write_buf16, align 8
  br label %94

92:                                               ; preds = %87
  %93 = load i64, i64* @nand_write_buf, align 8
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i64 [ %91, %90 ], [ %93, %92 ]
  %96 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %97 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %96, i32 0, i32 6
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %94, %82
  %99 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %100 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %114, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i64, i64* @nand_read_buf16, align 8
  br label %110

108:                                              ; preds = %103
  %109 = load i64, i64* @nand_read_buf, align 8
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i64 [ %107, %106 ], [ %109, %108 ]
  %112 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %113 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %112, i32 0, i32 5
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %110, %98
  %115 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %116 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %130, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* %4, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i64, i64* @nand_verify_buf16, align 8
  br label %126

124:                                              ; preds = %119
  %125 = load i64, i64* @nand_verify_buf, align 8
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i64 [ %123, %122 ], [ %125, %124 ]
  %128 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %129 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %128, i32 0, i32 4
  store i64 %127, i64* %129, align 8
  br label %130

130:                                              ; preds = %126, %114
  %131 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %132 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %130
  %136 = load i64, i64* @nand_default_bbt, align 8
  %137 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %138 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %137, i32 0, i32 3
  store i64 %136, i64* %138, align 8
  br label %139

139:                                              ; preds = %135, %130
  %140 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %141 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %140, i32 0, i32 1
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = icmp ne %struct.TYPE_2__* %142, null
  br i1 %143, label %159, label %144

144:                                              ; preds = %139
  %145 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %146 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %145, i32 0, i32 2
  %147 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %148 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %147, i32 0, i32 1
  store %struct.TYPE_2__* %146, %struct.TYPE_2__** %148, align 8
  %149 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %150 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %149, i32 0, i32 1
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = call i32 @spin_lock_init(i32* %152)
  %154 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %155 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %154, i32 0, i32 1
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = call i32 @init_waitqueue_head(i32* %157)
  br label %159

159:                                              ; preds = %144, %139
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
