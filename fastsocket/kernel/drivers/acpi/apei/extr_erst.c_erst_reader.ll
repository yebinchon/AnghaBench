; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_erst.c_erst_reader.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_erst.c_erst_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.timespec = type { i64, i32 }
%struct.pstore_info = type { i32 }
%struct.cper_pstore_record = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@erst_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@erst_disable = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@reader_pos = common dso_local global i32 0, align 4
@APEI_ERST_INVALID_RECORD_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CPER_CREATOR_PSTORE = common dso_local global i32 0, align 4
@CPER_SECTION_TYPE_DMESG = common dso_local global i32 0, align 4
@PSTORE_TYPE_DMESG = common dso_local global i32 0, align 4
@CPER_SECTION_TYPE_MCE = common dso_local global i32 0, align 4
@PSTORE_TYPE_MCE = common dso_local global i32 0, align 4
@PSTORE_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@CPER_VALID_TIMESTAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32*, i32*, %struct.timespec*, i8**, %struct.pstore_info*)* @erst_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erst_reader(i64* %0, i32* %1, i32* %2, %struct.timespec* %3, i8** %4, %struct.pstore_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.timespec*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.pstore_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.cper_pstore_record*, align 8
  %18 = alloca i64, align 8
  store i64* %0, i64** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.timespec* %3, %struct.timespec** %11, align 8
  store i8** %4, i8*** %12, align 8
  store %struct.pstore_info* %5, %struct.pstore_info** %13, align 8
  store i32 0, i32* %15, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erst_info, i32 0, i32 0), align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 20, %20
  store i64 %21, i64* %18, align 8
  %22 = load i64, i64* @erst_disable, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %164

27:                                               ; preds = %6
  %28 = load i64, i64* %18, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kmalloc(i32 %29, i32 %30)
  %32 = bitcast i8* %31 to %struct.cper_pstore_record*
  store %struct.cper_pstore_record* %32, %struct.cper_pstore_record** %17, align 8
  %33 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %17, align 8
  %34 = icmp ne %struct.cper_pstore_record* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %14, align 4
  br label %149

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %78, %61, %38
  %40 = call i32 @erst_get_record_id_next(i32* @reader_pos, i64* %16)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %149

44:                                               ; preds = %39
  %45 = load i64, i64* %16, align 8
  %46 = load i64, i64* @APEI_ERST_INVALID_RECORD_ID, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %14, align 4
  br label %149

51:                                               ; preds = %44
  %52 = load i64, i64* %16, align 8
  %53 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %17, align 8
  %54 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %53, i32 0, i32 0
  %55 = load i64, i64* %18, align 8
  %56 = call i32 @erst_read(i64 %52, %struct.TYPE_5__* %54, i64 %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* @ENOENT, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %39

62:                                               ; preds = %51
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp ult i64 %64, 20
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %14, align 4
  br label %149

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %17, align 8
  %72 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @CPER_CREATOR_PSTORE, align 4
  %76 = call i64 @uuid_le_cmp(i32 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %39

79:                                               ; preds = %70
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i8* @kmalloc(i32 %80, i32 %81)
  %83 = load i8**, i8*** %12, align 8
  store i8* %82, i8** %83, align 8
  %84 = load i8**, i8*** %12, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %14, align 4
  br label %149

90:                                               ; preds = %79
  %91 = load i8**, i8*** %12, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %17, align 8
  %94 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = sub i64 %97, 20
  %99 = trunc i64 %98 to i32
  %100 = call i32 @memcpy(i8* %92, i32 %95, i32 %99)
  %101 = load i64, i64* %16, align 8
  %102 = load i64*, i64** %8, align 8
  store i64 %101, i64* %102, align 8
  %103 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %17, align 8
  %104 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @CPER_SECTION_TYPE_DMESG, align 4
  %108 = call i64 @uuid_le_cmp(i32 %106, i32 %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %90
  %111 = load i32, i32* @PSTORE_TYPE_DMESG, align 4
  %112 = load i32*, i32** %9, align 8
  store i32 %111, i32* %112, align 4
  br label %128

113:                                              ; preds = %90
  %114 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %17, align 8
  %115 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @CPER_SECTION_TYPE_MCE, align 4
  %119 = call i64 @uuid_le_cmp(i32 %117, i32 %118)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  %122 = load i32, i32* @PSTORE_TYPE_MCE, align 4
  %123 = load i32*, i32** %9, align 8
  store i32 %122, i32* %123, align 4
  br label %127

124:                                              ; preds = %113
  %125 = load i32, i32* @PSTORE_TYPE_UNKNOWN, align 4
  %126 = load i32*, i32** %9, align 8
  store i32 %125, i32* %126, align 4
  br label %127

127:                                              ; preds = %124, %121
  br label %128

128:                                              ; preds = %127, %110
  %129 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %17, align 8
  %130 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @CPER_VALID_TIMESTAMP, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %128
  %137 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %17, align 8
  %138 = getelementptr inbounds %struct.cper_pstore_record, %struct.cper_pstore_record* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.timespec*, %struct.timespec** %11, align 8
  %142 = getelementptr inbounds %struct.timespec, %struct.timespec* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 8
  br label %146

143:                                              ; preds = %128
  %144 = load %struct.timespec*, %struct.timespec** %11, align 8
  %145 = getelementptr inbounds %struct.timespec, %struct.timespec* %144, i32 0, i32 1
  store i32 0, i32* %145, align 8
  br label %146

146:                                              ; preds = %143, %136
  %147 = load %struct.timespec*, %struct.timespec** %11, align 8
  %148 = getelementptr inbounds %struct.timespec, %struct.timespec* %147, i32 0, i32 0
  store i64 0, i64* %148, align 8
  br label %149

149:                                              ; preds = %146, %87, %66, %48, %43, %35
  %150 = load %struct.cper_pstore_record*, %struct.cper_pstore_record** %17, align 8
  %151 = call i32 @kfree(%struct.cper_pstore_record* %150)
  %152 = load i32, i32* %14, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load i32, i32* %14, align 4
  %156 = sext i32 %155 to i64
  br label %161

157:                                              ; preds = %149
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = sub i64 %159, 20
  br label %161

161:                                              ; preds = %157, %154
  %162 = phi i64 [ %156, %154 ], [ %160, %157 ]
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %161, %24
  %165 = load i32, i32* %7, align 4
  ret i32 %165
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @erst_get_record_id_next(i32*, i64*) #1

declare dso_local i32 @erst_read(i64, %struct.TYPE_5__*, i64) #1

declare dso_local i64 @uuid_le_cmp(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.cper_pstore_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
