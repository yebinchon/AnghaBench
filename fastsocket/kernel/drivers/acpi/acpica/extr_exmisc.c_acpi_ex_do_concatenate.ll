; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exmisc.c_acpi_ex_do_concatenate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exmisc.c_acpi_ex_do_concatenate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32* }
%struct.acpi_walk_state = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i64 }

@ex_do_concatenate = common dso_local global i32 0, align 4
@ACPI_IMPLICIT_CONVERT_HEX = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid object type: %X\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@acpi_gbl_integer_byte_width = common dso_local global i64 0, align 8
@AE_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_do_concatenate(%union.acpi_operand_object* %0, %union.acpi_operand_object* %1, %union.acpi_operand_object** %2, %struct.acpi_walk_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca %union.acpi_operand_object**, align 8
  %9 = alloca %struct.acpi_walk_state*, align 8
  %10 = alloca %union.acpi_operand_object*, align 8
  %11 = alloca %union.acpi_operand_object*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %6, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %7, align 8
  store %union.acpi_operand_object** %2, %union.acpi_operand_object*** %8, align 8
  store %struct.acpi_walk_state* %3, %struct.acpi_walk_state** %9, align 8
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  store %union.acpi_operand_object* %14, %union.acpi_operand_object** %10, align 8
  %15 = load i32, i32* @ex_do_concatenate, align 4
  %16 = call i32 @ACPI_FUNCTION_TRACE(i32 %15)
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %18 = bitcast %union.acpi_operand_object* %17 to %struct.TYPE_8__*
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %31 [
    i32 129, label %21
    i32 128, label %24
    i32 130, label %28
  ]

21:                                               ; preds = %4
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %23 = call i32 @acpi_ex_convert_to_integer(%union.acpi_operand_object* %22, %union.acpi_operand_object** %10, i32 16)
  store i32 %23, i32* %13, align 4
  br label %39

24:                                               ; preds = %4
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %26 = load i32, i32* @ACPI_IMPLICIT_CONVERT_HEX, align 4
  %27 = call i32 @acpi_ex_convert_to_string(%union.acpi_operand_object* %25, %union.acpi_operand_object** %10, i32 %26)
  store i32 %27, i32* %13, align 4
  br label %39

28:                                               ; preds = %4
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %30 = call i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object* %29, %union.acpi_operand_object** %10)
  store i32 %30, i32* %13, align 4
  br label %39

31:                                               ; preds = %4
  %32 = load i32, i32* @AE_INFO, align 4
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %34 = bitcast %union.acpi_operand_object* %33 to %struct.TYPE_8__*
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ACPI_ERROR(i32 %36)
  %38 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %31, %28, %24, %21
  %40 = load i32, i32* %13, align 4
  %41 = call i64 @ACPI_FAILURE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %172

44:                                               ; preds = %39
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %46 = bitcast %union.acpi_operand_object* %45 to %struct.TYPE_8__*
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %161 [
    i32 129, label %49
    i32 128, label %78
    i32 130, label %115
  ]

49:                                               ; preds = %44
  %50 = load i64, i64* @acpi_gbl_integer_byte_width, align 8
  %51 = call i32 @ACPI_MUL_2(i64 %50)
  %52 = sext i32 %51 to i64
  %53 = call %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64 %52)
  store %union.acpi_operand_object* %53, %union.acpi_operand_object** %11, align 8
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %55 = icmp ne %union.acpi_operand_object* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %57, i32* %13, align 4
  br label %172

58:                                               ; preds = %49
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %60 = bitcast %union.acpi_operand_object* %59 to %struct.TYPE_7__*
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = bitcast i32* %62 to i8*
  store i8* %63, i8** %12, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %66 = bitcast %union.acpi_operand_object* %65 to %struct.TYPE_5__*
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* @acpi_gbl_integer_byte_width, align 8
  %69 = call i32 @ACPI_MEMCPY(i8* %64, i32* %67, i64 %68)
  %70 = load i8*, i8** %12, align 8
  %71 = load i64, i64* @acpi_gbl_integer_byte_width, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %74 = bitcast %union.acpi_operand_object* %73 to %struct.TYPE_5__*
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* @acpi_gbl_integer_byte_width, align 8
  %77 = call i32 @ACPI_MEMCPY(i8* %72, i32* %75, i64 %76)
  br label %169

78:                                               ; preds = %44
  %79 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %80 = bitcast %union.acpi_operand_object* %79 to %struct.TYPE_6__*
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %84 = bitcast %union.acpi_operand_object* %83 to %struct.TYPE_6__*
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %82, %86
  %88 = call %union.acpi_operand_object* @acpi_ut_create_string_object(i64 %87)
  store %union.acpi_operand_object* %88, %union.acpi_operand_object** %11, align 8
  %89 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %90 = icmp ne %union.acpi_operand_object* %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %78
  %92 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %92, i32* %13, align 4
  br label %172

93:                                               ; preds = %78
  %94 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %95 = bitcast %union.acpi_operand_object* %94 to %struct.TYPE_6__*
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %12, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %100 = bitcast %union.acpi_operand_object* %99 to %struct.TYPE_6__*
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @ACPI_STRCPY(i8* %98, i8* %102)
  %104 = load i8*, i8** %12, align 8
  %105 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %106 = bitcast %union.acpi_operand_object* %105 to %struct.TYPE_6__*
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i8, i8* %104, i64 %108
  %110 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %111 = bitcast %union.acpi_operand_object* %110 to %struct.TYPE_6__*
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @ACPI_STRCPY(i8* %109, i8* %113)
  br label %169

115:                                              ; preds = %44
  %116 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %117 = bitcast %union.acpi_operand_object* %116 to %struct.TYPE_7__*
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %121 = bitcast %union.acpi_operand_object* %120 to %struct.TYPE_7__*
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %119, %123
  %125 = call %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64 %124)
  store %union.acpi_operand_object* %125, %union.acpi_operand_object** %11, align 8
  %126 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %127 = icmp ne %union.acpi_operand_object* %126, null
  br i1 %127, label %130, label %128

128:                                              ; preds = %115
  %129 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %129, i32* %13, align 4
  br label %172

130:                                              ; preds = %115
  %131 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %132 = bitcast %union.acpi_operand_object* %131 to %struct.TYPE_7__*
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = bitcast i32* %134 to i8*
  store i8* %135, i8** %12, align 8
  %136 = load i8*, i8** %12, align 8
  %137 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %138 = bitcast %union.acpi_operand_object* %137 to %struct.TYPE_7__*
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %142 = bitcast %union.acpi_operand_object* %141 to %struct.TYPE_7__*
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @ACPI_MEMCPY(i8* %136, i32* %140, i64 %144)
  %146 = load i8*, i8** %12, align 8
  %147 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %148 = bitcast %union.acpi_operand_object* %147 to %struct.TYPE_7__*
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds i8, i8* %146, i64 %150
  %152 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %153 = bitcast %union.acpi_operand_object* %152 to %struct.TYPE_7__*
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %157 = bitcast %union.acpi_operand_object* %156 to %struct.TYPE_7__*
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @ACPI_MEMCPY(i8* %151, i32* %155, i64 %159)
  br label %169

161:                                              ; preds = %44
  %162 = load i32, i32* @AE_INFO, align 4
  %163 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %164 = bitcast %union.acpi_operand_object* %163 to %struct.TYPE_8__*
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @ACPI_ERROR(i32 %166)
  %168 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %168, i32* %13, align 4
  br label %172

169:                                              ; preds = %130, %93, %58
  %170 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %171 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  store %union.acpi_operand_object* %170, %union.acpi_operand_object** %171, align 8
  br label %172

172:                                              ; preds = %169, %161, %128, %91, %56, %43
  %173 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %174 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %175 = icmp ne %union.acpi_operand_object* %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %178 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %177)
  br label %179

179:                                              ; preds = %176, %172
  %180 = load i32, i32* %13, align 4
  %181 = call i32 @return_ACPI_STATUS(i32 %180)
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ex_convert_to_integer(%union.acpi_operand_object*, %union.acpi_operand_object**, i32) #1

declare dso_local i32 @acpi_ex_convert_to_string(%union.acpi_operand_object*, %union.acpi_operand_object**, i32) #1

declare dso_local i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object*, %union.acpi_operand_object**) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_buffer_object(i64) #1

declare dso_local i32 @ACPI_MUL_2(i64) #1

declare dso_local i32 @ACPI_MEMCPY(i8*, i32*, i64) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_string_object(i64) #1

declare dso_local i32 @ACPI_STRCPY(i8*, i8*) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
