; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_erst.c_erst_writer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_erst.c_erst_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.pstore_info = type { i32 }
%struct.cper_pstore_record = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i8*, i32, i32, i64, i32 }

@erst_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@CPER_SIG_RECORD = common dso_local global i32 0, align 4
@CPER_SIG_SIZE = common dso_local global i32 0, align 4
@CPER_RECORD_REV = common dso_local global i32 0, align 4
@CPER_SIG_END = common dso_local global i32 0, align 4
@CPER_SEV_FATAL = common dso_local global i8* null, align 8
@CPER_VALID_TIMESTAMP = common dso_local global i32 0, align 4
@CPER_CREATOR_PSTORE = common dso_local global i32 0, align 4
@CPER_NOTIFY_MCE = common dso_local global i32 0, align 4
@CPER_HW_ERROR_FLAGS_PREVERR = common dso_local global i32 0, align 4
@CPER_SEC_REV = common dso_local global i32 0, align 4
@CPER_SEC_PRIMARY = common dso_local global i32 0, align 4
@CPER_SECTION_TYPE_DMESG = common dso_local global i32 0, align 4
@CPER_SECTION_TYPE_MCE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32, i32, i64, %struct.pstore_info*)* @erst_writer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erst_writer(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4, i64 %5, %struct.pstore_info* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.pstore_info*, align 8
  %16 = alloca %struct.cper_pstore_record*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store %struct.pstore_info* %6, %struct.pstore_info** %15, align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erst_info, i32 0, i32 0), align 8
  %19 = sub i64 %18, 104
  %20 = inttoptr i64 %19 to %struct.cper_pstore_record*
  store %struct.cper_pstore_record* %20, %struct.cper_pstore_record** %16, align 8
  %21 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %16, align 8
  %22 = call i32 @memset(%struct.cper_pstore_record* %21, i32 0, i32 104)
  %23 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %16, align 8
  %24 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 11
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CPER_SIG_RECORD, align 4
  %28 = load i32, i32* @CPER_SIG_SIZE, align 4
  %29 = call i32 @memcpy(i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* @CPER_RECORD_REV, align 4
  %31 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %16, align 8
  %32 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 10
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @CPER_SIG_END, align 4
  %35 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %16, align 8
  %36 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 9
  store i32 %34, i32* %37, align 8
  %38 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %16, align 8
  %39 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load i8*, i8** @CPER_SEV_FATAL, align 8
  %42 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %16, align 8
  %43 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 8
  store i8* %41, i8** %44, align 8
  %45 = load i32, i32* @CPER_VALID_TIMESTAMP, align 4
  %46 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %16, align 8
  %47 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 7
  store i32 %45, i32* %48, align 4
  %49 = call i32 (...) @get_seconds()
  %50 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %16, align 8
  %51 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 6
  store i32 %49, i32* %52, align 8
  %53 = load i64, i64* %14, align 8
  %54 = add i64 104, %53
  %55 = trunc i64 %54 to i32
  %56 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %16, align 8
  %57 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @CPER_CREATOR_PSTORE, align 4
  %60 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %16, align 8
  %61 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 5
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @CPER_NOTIFY_MCE, align 4
  %64 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %16, align 8
  %65 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 4
  store i32 %63, i32* %66, align 8
  %67 = call i32 (...) @cper_next_record_id()
  %68 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %16, align 8
  %69 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 8
  %71 = load i32, i32* @CPER_HW_ERROR_FLAGS_PREVERR, align 4
  %72 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %16, align 8
  %73 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 3
  store i32 %71, i32* %74, align 4
  %75 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %16, align 8
  %76 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 104, i32* %77, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %16, align 8
  %80 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i64 %78, i64* %81, align 8
  %82 = load i32, i32* @CPER_SEC_REV, align 4
  %83 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %16, align 8
  %84 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 6
  store i32 %82, i32* %85, align 8
  %86 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %16, align 8
  %87 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 5
  store i64 0, i64* %88, align 8
  %89 = load i32, i32* @CPER_SEC_PRIMARY, align 4
  %90 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %16, align 8
  %91 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 4
  store i32 %89, i32* %92, align 4
  %93 = load i32, i32* %9, align 4
  switch i32 %93, label %104 [
    i32 129, label %94
    i32 128, label %99
  ]

94:                                               ; preds = %7
  %95 = load i32, i32* @CPER_SECTION_TYPE_DMESG, align 4
  %96 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %16, align 8
  %97 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  store i32 %95, i32* %98, align 8
  br label %107

99:                                               ; preds = %7
  %100 = load i32, i32* @CPER_SECTION_TYPE_MCE, align 4
  %101 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %16, align 8
  %102 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  store i32 %100, i32* %103, align 8
  br label %107

104:                                              ; preds = %7
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %8, align 4
  br label %121

107:                                              ; preds = %99, %94
  %108 = load i8*, i8** @CPER_SEV_FATAL, align 8
  %109 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %16, align 8
  %110 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  store i8* %108, i8** %111, align 8
  %112 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %16, align 8
  %113 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %112, i32 0, i32 0
  %114 = call i32 @erst_write(%struct.TYPE_5__* %113)
  store i32 %114, i32* %17, align 4
  %115 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %16, align 8
  %116 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32*, i32** %11, align 8
  store i32 %118, i32* %119, align 4
  %120 = load i32, i32* %17, align 4
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %107, %104
  %122 = load i32, i32* %8, align 4
  ret i32 %122
}

declare dso_local i32 @memset(%struct.cper_pstore_record*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @cper_next_record_id(...) #1

declare dso_local i32 @erst_write(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
