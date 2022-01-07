; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsutils.c_acpi_ns_build_internal_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_nsutils.c_acpi_ns_build_internal_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namestring_info = type { i32, i8*, i8*, i32, i64 }

@ns_build_internal_name = common dso_local global i32 0, align 4
@AML_DUAL_NAME_PREFIX = common dso_local global i8 0, align 1
@AML_MULTI_NAME_PREFIX_OP = common dso_local global i8 0, align 1
@ACPI_NAME_SIZE = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Returning [%p] (abs) \22\\%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Returning [%p] (rel) \22%s\22\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_build_internal_name(%struct.acpi_namestring_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_namestring_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.acpi_namestring_info* %0, %struct.acpi_namestring_info** %3, align 8
  %9 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %3, align 8
  %10 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %5, align 8
  %15 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %15, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %18 = load i32, i32* @ns_build_internal_name, align 4
  %19 = call i32 @ACPI_FUNCTION_TRACE(i32 %18)
  %20 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %3, align 8
  %21 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %1
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 92, i8* %26, align 1
  %27 = load i32, i32* %4, align 4
  %28 = icmp sle i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  store i8* %31, i8** %7, align 8
  br label %52

32:                                               ; preds = %24
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i8, i8* @AML_DUAL_NAME_PREFIX, align 1
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  store i8 %36, i8* %38, align 1
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  store i8* %40, i8** %7, align 8
  br label %51

41:                                               ; preds = %32
  %42 = load i8, i8* @AML_MULTI_NAME_PREFIX_OP, align 1
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  store i8 %42, i8* %44, align 1
  %45 = load i32, i32* %4, align 4
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  store i8 %46, i8* %48, align 1
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 3
  store i8* %50, i8** %7, align 8
  br label %51

51:                                               ; preds = %41, %35
  br label %52

52:                                               ; preds = %51, %29
  br label %116

53:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  %54 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %3, align 8
  %55 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %53
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %70, %58
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %3, align 8
  %62 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8 94, i8* %69, align 1
  br label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %59

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73, %53
  %75 = load i32, i32* %4, align 4
  %76 = icmp sle i32 %75, 1
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8* %81, i8** %7, align 8
  br label %115

82:                                               ; preds = %74
  %83 = load i32, i32* %4, align 4
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = load i8, i8* @AML_DUAL_NAME_PREFIX, align 1
  %87 = load i8*, i8** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8 %86, i8* %90, align 1
  %91 = load i8*, i8** %5, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = add i64 %93, 1
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  store i8* %95, i8** %7, align 8
  br label %114

96:                                               ; preds = %82
  %97 = load i8, i8* @AML_MULTI_NAME_PREFIX_OP, align 1
  %98 = load i8*, i8** %5, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  store i8 %97, i8* %101, align 1
  %102 = load i32, i32* %4, align 4
  %103 = trunc i32 %102 to i8
  %104 = load i8*, i8** %5, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = add i64 %106, 1
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  store i8 %103, i8* %108, align 1
  %109 = load i8*, i8** %5, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = add i64 %111, 2
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  store i8* %113, i8** %7, align 8
  br label %114

114:                                              ; preds = %96, %85
  br label %115

115:                                              ; preds = %114, %77
  br label %116

116:                                              ; preds = %115, %52
  br label %117

117:                                              ; preds = %176, %116
  %118 = load i32, i32* %4, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %179

120:                                              ; preds = %117
  store i32 0, i32* %8, align 4
  br label %121

121:                                              ; preds = %153, %120
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @ACPI_NAME_SIZE, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %156

125:                                              ; preds = %121
  %126 = load i8*, i8** %6, align 8
  %127 = load i8, i8* %126, align 1
  %128 = call i64 @acpi_ns_valid_path_separator(i8 signext %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = load i8*, i8** %6, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %130, %125
  %136 = load i8*, i8** %7, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  store i8 95, i8* %139, align 1
  br label %152

140:                                              ; preds = %130
  %141 = load i8*, i8** %6, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = call i64 @ACPI_TOUPPER(i32 %143)
  %145 = trunc i64 %144 to i8
  %146 = load i8*, i8** %7, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  store i8 %145, i8* %149, align 1
  %150 = load i8*, i8** %6, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %6, align 8
  br label %152

152:                                              ; preds = %140, %135
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %8, align 4
  br label %121

156:                                              ; preds = %121
  %157 = load i8*, i8** %6, align 8
  %158 = load i8, i8* %157, align 1
  %159 = call i64 @acpi_ns_valid_path_separator(i8 signext %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %169, label %161

161:                                              ; preds = %156
  %162 = load i8*, i8** %6, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %168 = call i32 @return_ACPI_STATUS(i32 %167)
  br label %169

169:                                              ; preds = %166, %161, %156
  %170 = load i8*, i8** %6, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %6, align 8
  %172 = load i32, i32* @ACPI_NAME_SIZE, align 4
  %173 = load i8*, i8** %7, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i8, i8* %173, i64 %174
  store i8* %175, i8** %7, align 8
  br label %176

176:                                              ; preds = %169
  %177 = load i32, i32* %4, align 4
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %4, align 4
  br label %117

179:                                              ; preds = %117
  %180 = load i8*, i8** %7, align 8
  store i8 0, i8* %180, align 1
  %181 = load %struct.acpi_namestring_info*, %struct.acpi_namestring_info** %3, align 8
  %182 = getelementptr inbounds %struct.acpi_namestring_info, %struct.acpi_namestring_info* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %179
  %186 = load i32, i32* @ACPI_DB_EXEC, align 4
  %187 = load i8*, i8** %5, align 8
  %188 = load i8*, i8** %5, align 8
  %189 = ptrtoint i8* %188 to i32
  %190 = call i32 @ACPI_DEBUG_PRINT(i32 %189)
  br label %197

191:                                              ; preds = %179
  %192 = load i32, i32* @ACPI_DB_EXEC, align 4
  %193 = load i8*, i8** %5, align 8
  %194 = load i8*, i8** %5, align 8
  %195 = ptrtoint i8* %194 to i32
  %196 = call i32 @ACPI_DEBUG_PRINT(i32 %195)
  br label %197

197:                                              ; preds = %191, %185
  %198 = load i32, i32* @AE_OK, align 4
  %199 = call i32 @return_ACPI_STATUS(i32 %198)
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i64 @acpi_ns_valid_path_separator(i8 signext) #1

declare dso_local i64 @ACPI_TOUPPER(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
