; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exmisc.c_acpi_ex_do_logical_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exmisc.c_acpi_ex_do_logical_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ex_do_logical_op = common dso_local global i32 0, align 4
@ACPI_IMPLICIT_CONVERT_HEX = common dso_local global i32 0, align 4
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_do_logical_op(i32 %0, %union.acpi_operand_object* %1, %union.acpi_operand_object* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca %union.acpi_operand_object*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %union.acpi_operand_object*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %7, align 8
  store %union.acpi_operand_object* %2, %union.acpi_operand_object** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  store %union.acpi_operand_object* %18, %union.acpi_operand_object** %10, align 8
  %19 = load i32, i32* @AE_OK, align 4
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* @ex_do_logical_op, align 4
  %22 = call i32 @ACPI_FUNCTION_TRACE(i32 %21)
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %24 = bitcast %union.acpi_operand_object* %23 to %struct.TYPE_4__*
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %37 [
    i32 132, label %27
    i32 131, label %30
    i32 133, label %34
  ]

27:                                               ; preds = %4
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %29 = call i32 @acpi_ex_convert_to_integer(%union.acpi_operand_object* %28, %union.acpi_operand_object** %10, i32 16)
  store i32 %29, i32* %15, align 4
  br label %39

30:                                               ; preds = %4
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %32 = load i32, i32* @ACPI_IMPLICIT_CONVERT_HEX, align 4
  %33 = call i32 @acpi_ex_convert_to_string(%union.acpi_operand_object* %31, %union.acpi_operand_object** %10, i32 %32)
  store i32 %33, i32* %15, align 4
  br label %39

34:                                               ; preds = %4
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %36 = call i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object* %35, %union.acpi_operand_object** %10)
  store i32 %36, i32* %15, align 4
  br label %39

37:                                               ; preds = %4
  %38 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %38, i32* %15, align 4
  br label %39

39:                                               ; preds = %37, %34, %30, %27
  %40 = load i32, i32* %15, align 4
  %41 = call i64 @ACPI_FAILURE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %158

44:                                               ; preds = %39
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %46 = bitcast %union.acpi_operand_object* %45 to %struct.TYPE_4__*
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 132
  br i1 %49, label %50, label %84

50:                                               ; preds = %44
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %52 = bitcast %union.acpi_operand_object* %51 to %struct.TYPE_5__*
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %11, align 4
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %56 = bitcast %union.acpi_operand_object* %55 to %struct.TYPE_5__*
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %6, align 4
  switch i32 %59, label %81 [
    i32 130, label %60
    i32 129, label %67
    i32 128, label %74
  ]

60:                                               ; preds = %50
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @TRUE, align 4
  store i32 %65, i32* %16, align 4
  br label %66

66:                                               ; preds = %64, %60
  br label %83

67:                                               ; preds = %50
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* %16, align 4
  br label %73

73:                                               ; preds = %71, %67
  br label %83

74:                                               ; preds = %50
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @TRUE, align 4
  store i32 %79, i32* %16, align 4
  br label %80

80:                                               ; preds = %78, %74
  br label %83

81:                                               ; preds = %50
  %82 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %82, i32* %15, align 4
  br label %83

83:                                               ; preds = %81, %80, %73, %66
  br label %157

84:                                               ; preds = %44
  %85 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %86 = bitcast %union.acpi_operand_object* %85 to %struct.TYPE_6__*
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %13, align 8
  %89 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %90 = bitcast %union.acpi_operand_object* %89 to %struct.TYPE_6__*
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %14, align 8
  %93 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %94 = bitcast %union.acpi_operand_object* %93 to %struct.TYPE_6__*
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %98 = bitcast %union.acpi_operand_object* %97 to %struct.TYPE_6__*
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* %14, align 8
  %103 = icmp sgt i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %84
  %105 = load i64, i64* %14, align 8
  br label %108

106:                                              ; preds = %84
  %107 = load i64, i64* %13, align 8
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i64 [ %105, %104 ], [ %107, %106 ]
  %110 = call i32 @ACPI_MEMCMP(i32 %96, i32 %100, i64 %109)
  store i32 %110, i32* %17, align 4
  %111 = load i32, i32* %6, align 4
  switch i32 %111, label %154 [
    i32 130, label %112
    i32 129, label %122
    i32 128, label %138
  ]

112:                                              ; preds = %108
  %113 = load i64, i64* %13, align 8
  %114 = load i64, i64* %14, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load i32, i32* %17, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load i32, i32* @TRUE, align 4
  store i32 %120, i32* %16, align 4
  br label %121

121:                                              ; preds = %119, %116, %112
  br label %156

122:                                              ; preds = %108
  %123 = load i32, i32* %17, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i32, i32* @TRUE, align 4
  store i32 %126, i32* %16, align 4
  br label %158

127:                                              ; preds = %122
  %128 = load i32, i32* %17, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %158

131:                                              ; preds = %127
  %132 = load i64, i64* %13, align 8
  %133 = load i64, i64* %14, align 8
  %134 = icmp sgt i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i32, i32* @TRUE, align 4
  store i32 %136, i32* %16, align 4
  br label %137

137:                                              ; preds = %135, %131
  br label %156

138:                                              ; preds = %108
  %139 = load i32, i32* %17, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  br label %158

142:                                              ; preds = %138
  %143 = load i32, i32* %17, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = load i32, i32* @TRUE, align 4
  store i32 %146, i32* %16, align 4
  br label %158

147:                                              ; preds = %142
  %148 = load i64, i64* %13, align 8
  %149 = load i64, i64* %14, align 8
  %150 = icmp slt i64 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i32, i32* @TRUE, align 4
  store i32 %152, i32* %16, align 4
  br label %153

153:                                              ; preds = %151, %147
  br label %156

154:                                              ; preds = %108
  %155 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %155, i32* %15, align 4
  br label %156

156:                                              ; preds = %154, %153, %137, %121
  br label %157

157:                                              ; preds = %156, %83
  br label %158

158:                                              ; preds = %157, %145, %141, %130, %125, %43
  %159 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %160 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %161 = icmp ne %union.acpi_operand_object* %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %164 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %163)
  br label %165

165:                                              ; preds = %162, %158
  %166 = load i32, i32* %16, align 4
  %167 = load i32*, i32** %9, align 8
  store i32 %166, i32* %167, align 4
  %168 = load i32, i32* %15, align 4
  %169 = call i32 @return_ACPI_STATUS(i32 %168)
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ex_convert_to_integer(%union.acpi_operand_object*, %union.acpi_operand_object**, i32) #1

declare dso_local i32 @acpi_ex_convert_to_string(%union.acpi_operand_object*, %union.acpi_operand_object**, i32) #1

declare dso_local i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object*, %union.acpi_operand_object**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_MEMCMP(i32, i32, i64) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
