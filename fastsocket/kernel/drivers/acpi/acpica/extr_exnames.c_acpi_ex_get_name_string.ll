; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exnames.c_acpi_ex_get_name_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_exnames.c_acpi_ex_get_name_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AE_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@ex_get_name_string = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_REGION_FIELD = common dso_local global i64 0, align 8
@ACPI_TYPE_LOCAL_BANK_FIELD = common dso_local global i64 0, align 8
@ACPI_TYPE_LOCAL_INDEX_FIELD = common dso_local global i64 0, align 8
@AE_NO_MEMORY = common dso_local global i64 0, align 8
@ACPI_DB_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"RootPrefix(\\) at %p\0A\00", align 1
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ParentPrefix (^) at %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"DualNamePrefix at %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MultiNamePrefix at %p\0A\00", align 1
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"NameSeg is \22\\\22 followed by NULL\0A\00", align 1
@AE_CTRL_PENDING = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Malformed Name at %p\00", align 1
@AE_AML_BAD_NAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_ex_get_name_string(i64 %0, i32* %1, i8** %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32* %1, i32** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i64, i64* @AE_OK, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i32*, i32** %7, align 8
  store i32* %17, i32** %11, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* @ex_get_name_string, align 4
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %19, i32* %20)
  %22 = load i64, i64* @ACPI_TYPE_LOCAL_REGION_FIELD, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %4
  %26 = load i64, i64* @ACPI_TYPE_LOCAL_BANK_FIELD, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* @ACPI_TYPE_LOCAL_INDEX_FIELD, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %29, %25, %4
  %34 = call i8* @acpi_ex_allocate_name_string(i32 0, i32 1)
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* @AE_NO_MEMORY, align 8
  store i64 %38, i64* %10, align 8
  br label %42

39:                                               ; preds = %33
  %40 = load i8*, i8** %12, align 8
  %41 = call i64 @acpi_ex_name_segment(i32** %11, i8* %40)
  store i64 %41, i64* %10, align 8
  br label %42

42:                                               ; preds = %39, %37
  br label %161

43:                                               ; preds = %29
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %71 [
    i32 128, label %46
    i32 129, label %55
  ]

46:                                               ; preds = %43
  %47 = load i32, i32* @ACPI_DB_LOAD, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = ptrtoint i32* %48 to i32
  %50 = call i32 @ACPI_DEBUG_PRINT(i32 %49)
  %51 = load i32*, i32** %11, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %11, align 8
  %53 = load i32, i32* @ACPI_UINT32_MAX, align 4
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %15, align 4
  br label %72

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %65, %55
  %57 = load i32, i32* @ACPI_DB_LOAD, align 4
  %58 = load i32*, i32** %11, align 8
  %59 = ptrtoint i32* %58 to i32
  %60 = call i32 @ACPI_DEBUG_PRINT(i32 %59)
  %61 = load i32*, i32** %11, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %11, align 8
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %56
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 129
  br i1 %68, label %56, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @TRUE, align 4
  store i32 %70, i32* %15, align 4
  br label %72

71:                                               ; preds = %43
  br label %72

72:                                               ; preds = %71, %69, %46
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %150 [
    i32 131, label %75
    i32 130, label %99
    i32 0, label %133
  ]

75:                                               ; preds = %72
  %76 = load i32, i32* @ACPI_DB_LOAD, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = ptrtoint i32* %77 to i32
  %79 = call i32 @ACPI_DEBUG_PRINT(i32 %78)
  %80 = load i32*, i32** %11, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %11, align 8
  %82 = load i32, i32* %14, align 4
  %83 = call i8* @acpi_ex_allocate_name_string(i32 %82, i32 2)
  store i8* %83, i8** %12, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %75
  %87 = load i64, i64* @AE_NO_MEMORY, align 8
  store i64 %87, i64* %10, align 8
  br label %160

88:                                               ; preds = %75
  %89 = load i32, i32* @TRUE, align 4
  store i32 %89, i32* %15, align 4
  %90 = load i8*, i8** %12, align 8
  %91 = call i64 @acpi_ex_name_segment(i32** %11, i8* %90)
  store i64 %91, i64* %10, align 8
  %92 = load i64, i64* %10, align 8
  %93 = call i32 @ACPI_SUCCESS(i64 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i8*, i8** %12, align 8
  %97 = call i64 @acpi_ex_name_segment(i32** %11, i8* %96)
  store i64 %97, i64* %10, align 8
  br label %98

98:                                               ; preds = %95, %88
  br label %160

99:                                               ; preds = %72
  %100 = load i32, i32* @ACPI_DB_LOAD, align 4
  %101 = load i32*, i32** %11, align 8
  %102 = ptrtoint i32* %101 to i32
  %103 = call i32 @ACPI_DEBUG_PRINT(i32 %102)
  %104 = load i32*, i32** %11, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %11, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %13, align 4
  %110 = call i8* @acpi_ex_allocate_name_string(i32 %108, i32 %109)
  store i8* %110, i8** %12, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %99
  %114 = load i64, i64* @AE_NO_MEMORY, align 8
  store i64 %114, i64* %10, align 8
  br label %160

115:                                              ; preds = %99
  %116 = load i32*, i32** %11, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %11, align 8
  %118 = load i32, i32* @TRUE, align 4
  store i32 %118, i32* %15, align 4
  br label %119

119:                                              ; preds = %129, %115
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load i8*, i8** %12, align 8
  %124 = call i64 @acpi_ex_name_segment(i32** %11, i8* %123)
  store i64 %124, i64* %10, align 8
  %125 = load i64, i64* @AE_OK, align 8
  %126 = icmp eq i64 %124, %125
  br label %127

127:                                              ; preds = %122, %119
  %128 = phi i1 [ false, %119 ], [ %126, %122 ]
  br i1 %128, label %129, label %132

129:                                              ; preds = %127
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %13, align 4
  br label %119

132:                                              ; preds = %127
  br label %160

133:                                              ; preds = %72
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i32, i32* @ACPI_DB_EXEC, align 4
  %139 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([33 x i8]* @.str.4 to i32))
  br label %140

140:                                              ; preds = %137, %133
  %141 = load i32*, i32** %11, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %11, align 8
  %143 = load i32, i32* %14, align 4
  %144 = call i8* @acpi_ex_allocate_name_string(i32 %143, i32 0)
  store i8* %144, i8** %12, align 8
  %145 = load i8*, i8** %12, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %149, label %147

147:                                              ; preds = %140
  %148 = load i64, i64* @AE_NO_MEMORY, align 8
  store i64 %148, i64* %10, align 8
  br label %160

149:                                              ; preds = %140
  br label %160

150:                                              ; preds = %72
  %151 = load i32, i32* %14, align 4
  %152 = call i8* @acpi_ex_allocate_name_string(i32 %151, i32 1)
  store i8* %152, i8** %12, align 8
  %153 = load i8*, i8** %12, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %150
  %156 = load i64, i64* @AE_NO_MEMORY, align 8
  store i64 %156, i64* %10, align 8
  br label %160

157:                                              ; preds = %150
  %158 = load i8*, i8** %12, align 8
  %159 = call i64 @acpi_ex_name_segment(i32** %11, i8* %158)
  store i64 %159, i64* %10, align 8
  br label %160

160:                                              ; preds = %157, %155, %149, %147, %132, %113, %98, %86
  br label %161

161:                                              ; preds = %160, %42
  %162 = load i64, i64* @AE_CTRL_PENDING, align 8
  %163 = load i64, i64* %10, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %161
  %166 = load i32, i32* %15, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load i32, i32* @AE_INFO, align 4
  %170 = load i8*, i8** %12, align 8
  %171 = ptrtoint i8* %170 to i32
  %172 = call i32 @ACPI_ERROR(i32 %171)
  %173 = load i64, i64* @AE_AML_BAD_NAME, align 8
  store i64 %173, i64* %10, align 8
  br label %174

174:                                              ; preds = %168, %165, %161
  %175 = load i64, i64* %10, align 8
  %176 = call i64 @ACPI_FAILURE(i64 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %174
  %179 = load i8*, i8** %12, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i8*, i8** %12, align 8
  %183 = call i32 @ACPI_FREE(i8* %182)
  br label %184

184:                                              ; preds = %181, %178
  %185 = load i64, i64* %10, align 8
  %186 = call i32 @return_ACPI_STATUS(i64 %185)
  br label %187

187:                                              ; preds = %184, %174
  %188 = load i8*, i8** %12, align 8
  %189 = load i8**, i8*** %8, align 8
  store i8* %188, i8** %189, align 8
  %190 = load i32*, i32** %11, align 8
  %191 = load i32*, i32** %7, align 8
  %192 = ptrtoint i32* %190 to i64
  %193 = ptrtoint i32* %191 to i64
  %194 = sub i64 %192, %193
  %195 = sdiv exact i64 %194, 4
  %196 = trunc i64 %195 to i32
  %197 = load i32*, i32** %9, align 8
  store i32 %196, i32* %197, align 4
  %198 = load i64, i64* %10, align 8
  %199 = call i32 @return_ACPI_STATUS(i64 %198)
  %200 = load i64, i64* %5, align 8
  ret i64 %200
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, i32*) #1

declare dso_local i8* @acpi_ex_allocate_name_string(i32, i32) #1

declare dso_local i64 @acpi_ex_name_segment(i32**, i8*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_SUCCESS(i64) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @ACPI_FREE(i8*) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
