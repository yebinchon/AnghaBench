; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utcopy.c_acpi_ut_copy_simple_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utcopy.c_acpi_ut_copy_simple_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %union.acpi_operand_object*, i32 }
%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i8*, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@AOPOBJ_STATIC_POINTER = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_REFCLASS_TABLE = common dso_local global i32 0, align 4
@ACPI_NO_UNIT_LIMIT = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.acpi_operand_object*, %union.acpi_operand_object*)* @acpi_ut_copy_simple_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ut_copy_simple_object(%union.acpi_operand_object* %0, %union.acpi_operand_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %4, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %5, align 8
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %10 = bitcast %union.acpi_operand_object* %9 to %struct.TYPE_8__*
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %14 = bitcast %union.acpi_operand_object* %13 to %struct.TYPE_8__*
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %15, align 8
  store %union.acpi_operand_object* %16, %union.acpi_operand_object** %7, align 8
  %17 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %18 = bitcast %union.acpi_operand_object* %17 to i8*
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %20 = bitcast %union.acpi_operand_object* %19 to i8*
  %21 = call i32 @ACPI_MEMCPY(i8* %18, i8* %20, i32 24)
  %22 = load i32, i32* %6, align 4
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %24 = bitcast %union.acpi_operand_object* %23 to %struct.TYPE_8__*
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 8
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %28 = bitcast %union.acpi_operand_object* %27 to %struct.TYPE_8__*
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  store %union.acpi_operand_object* %26, %union.acpi_operand_object** %29, align 8
  %30 = load i32, i32* @AOPOBJ_STATIC_POINTER, align 4
  %31 = xor i32 %30, -1
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %33 = bitcast %union.acpi_operand_object* %32 to %struct.TYPE_8__*
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %31
  store i32 %36, i32* %34, align 4
  %37 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %38 = bitcast %union.acpi_operand_object* %37 to %struct.TYPE_8__*
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %173 [
    i32 133, label %41
    i32 128, label %84
    i32 131, label %123
    i32 129, label %137
    i32 130, label %150
    i32 132, label %161
  ]

41:                                               ; preds = %2
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %43 = bitcast %union.acpi_operand_object* %42 to %struct.TYPE_9__*
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %83

47:                                               ; preds = %41
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %49 = bitcast %union.acpi_operand_object* %48 to %struct.TYPE_9__*
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %83

53:                                               ; preds = %47
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %55 = bitcast %union.acpi_operand_object* %54 to %struct.TYPE_9__*
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @ACPI_ALLOCATE(i32 %57)
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %60 = bitcast %union.acpi_operand_object* %59 to %struct.TYPE_9__*
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store i8* %58, i8** %61, align 8
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %63 = bitcast %union.acpi_operand_object* %62 to %struct.TYPE_9__*
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %53
  %68 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %68, i32* %3, align 4
  br label %176

69:                                               ; preds = %53
  %70 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %71 = bitcast %union.acpi_operand_object* %70 to %struct.TYPE_9__*
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %75 = bitcast %union.acpi_operand_object* %74 to %struct.TYPE_9__*
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %79 = bitcast %union.acpi_operand_object* %78 to %struct.TYPE_9__*
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ACPI_MEMCPY(i8* %73, i8* %77, i32 %81)
  br label %83

83:                                               ; preds = %69, %47, %41
  br label %174

84:                                               ; preds = %2
  %85 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %86 = bitcast %union.acpi_operand_object* %85 to %struct.TYPE_10__*
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %122

90:                                               ; preds = %84
  %91 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %92 = bitcast %union.acpi_operand_object* %91 to %struct.TYPE_10__*
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  %96 = call i8* @ACPI_ALLOCATE(i32 %95)
  %97 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %98 = bitcast %union.acpi_operand_object* %97 to %struct.TYPE_10__*
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store i8* %96, i8** %99, align 8
  %100 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %101 = bitcast %union.acpi_operand_object* %100 to %struct.TYPE_10__*
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %90
  %106 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %106, i32* %3, align 4
  br label %176

107:                                              ; preds = %90
  %108 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %109 = bitcast %union.acpi_operand_object* %108 to %struct.TYPE_10__*
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %113 = bitcast %union.acpi_operand_object* %112 to %struct.TYPE_10__*
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %117 = bitcast %union.acpi_operand_object* %116 to %struct.TYPE_10__*
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  %121 = call i32 @ACPI_MEMCPY(i8* %111, i8* %115, i32 %120)
  br label %122

122:                                              ; preds = %107, %84
  br label %174

123:                                              ; preds = %2
  %124 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %125 = bitcast %union.acpi_operand_object* %124 to %struct.TYPE_11__*
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @ACPI_REFCLASS_TABLE, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %174

131:                                              ; preds = %123
  %132 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %133 = bitcast %union.acpi_operand_object* %132 to %struct.TYPE_11__*
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @acpi_ut_add_reference(i32 %135)
  br label %174

137:                                              ; preds = %2
  %138 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %139 = bitcast %union.acpi_operand_object* %138 to %struct.TYPE_12__*
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %145 = bitcast %union.acpi_operand_object* %144 to %struct.TYPE_12__*
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @acpi_ut_add_reference(i32 %147)
  br label %149

149:                                              ; preds = %143, %137
  br label %174

150:                                              ; preds = %2
  %151 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %152 = bitcast %union.acpi_operand_object* %151 to %struct.TYPE_13__*
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = call i32 @acpi_os_create_mutex(i32* %153)
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @ACPI_FAILURE(i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %150
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %3, align 4
  br label %176

160:                                              ; preds = %150
  br label %174

161:                                              ; preds = %2
  %162 = load i32, i32* @ACPI_NO_UNIT_LIMIT, align 4
  %163 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %164 = bitcast %union.acpi_operand_object* %163 to %struct.TYPE_14__*
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = call i32 @acpi_os_create_semaphore(i32 %162, i32 0, i32* %165)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @ACPI_FAILURE(i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %161
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %3, align 4
  br label %176

172:                                              ; preds = %161
  br label %174

173:                                              ; preds = %2
  br label %174

174:                                              ; preds = %173, %172, %160, %149, %131, %130, %122, %83
  %175 = load i32, i32* @AE_OK, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %174, %170, %158, %105, %67
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local i32 @ACPI_MEMCPY(i8*, i8*, i32) #1

declare dso_local i8* @ACPI_ALLOCATE(i32) #1

declare dso_local i32 @acpi_ut_add_reference(i32) #1

declare dso_local i32 @acpi_os_create_mutex(i32*) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_os_create_semaphore(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
