; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_convert_param_ddb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_convert_param_ddb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_db_entry = type { i32*, i32, i32, i32, i32*, i32 }
%struct.ql4_tuple_ddb = type { i32*, i8*, i32, i32*, i32 }

@DDB_OPT_IPV6_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%pI6\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%pI4\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dev_db_entry*, %struct.ql4_tuple_ddb*, i32*)* @qla4xxx_convert_param_ddb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4xxx_convert_param_ddb(%struct.dev_db_entry* %0, %struct.ql4_tuple_ddb* %1, i32* %2) #0 {
  %4 = alloca %struct.dev_db_entry*, align 8
  %5 = alloca %struct.ql4_tuple_ddb*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.dev_db_entry* %0, %struct.dev_db_entry** %4, align 8
  store %struct.ql4_tuple_ddb* %1, %struct.ql4_tuple_ddb** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.dev_db_entry*, %struct.dev_db_entry** %4, align 8
  %9 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @le32_to_cpu(i32 %10)
  %12 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %5, align 8
  %13 = getelementptr inbounds %struct.ql4_tuple_ddb, %struct.ql4_tuple_ddb* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 8
  %14 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %5, align 8
  %15 = getelementptr inbounds %struct.ql4_tuple_ddb, %struct.ql4_tuple_ddb* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load %struct.dev_db_entry*, %struct.dev_db_entry** %4, align 8
  %19 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = call i32 @min(i32 8, i32 8)
  %23 = call i32 @memcpy(i32* %17, i32* %21, i32 %22)
  %24 = load %struct.dev_db_entry*, %struct.dev_db_entry** %4, align 8
  %25 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @le16_to_cpu(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @DDB_OPT_IPV6_DEVICE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %3
  %34 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %5, align 8
  %35 = getelementptr inbounds %struct.ql4_tuple_ddb, %struct.ql4_tuple_ddb* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dev_db_entry*, %struct.dev_db_entry** %4, align 8
  %38 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sprintf(i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %49

41:                                               ; preds = %3
  %42 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %5, align 8
  %43 = getelementptr inbounds %struct.ql4_tuple_ddb, %struct.ql4_tuple_ddb* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.dev_db_entry*, %struct.dev_db_entry** %4, align 8
  %46 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sprintf(i32 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %41, %33
  %50 = load %struct.dev_db_entry*, %struct.dev_db_entry** %4, align 8
  %51 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @le16_to_cpu(i32 %52)
  %54 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %5, align 8
  %55 = getelementptr inbounds %struct.ql4_tuple_ddb, %struct.ql4_tuple_ddb* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %49
  %59 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %5, align 8
  %60 = getelementptr inbounds %struct.ql4_tuple_ddb, %struct.ql4_tuple_ddb* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load %struct.dev_db_entry*, %struct.dev_db_entry** %4, align 8
  %64 = getelementptr inbounds %struct.dev_db_entry, %struct.dev_db_entry* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = call i32 @memcpy(i32* %62, i32* %66, i32 8)
  br label %76

68:                                               ; preds = %49
  %69 = load %struct.ql4_tuple_ddb*, %struct.ql4_tuple_ddb** %5, align 8
  %70 = getelementptr inbounds %struct.ql4_tuple_ddb, %struct.ql4_tuple_ddb* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = call i32 @memcpy(i32* %72, i32* %74, i32 8)
  br label %76

76:                                               ; preds = %68, %58
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
