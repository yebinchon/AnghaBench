; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_adapter_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_adapter_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { %struct.zfcp_dbf*, %struct.TYPE_2__* }
%struct.zfcp_dbf = type { i8*, i8*, i8*, i8*, i32, i32, i32, i32, %struct.zfcp_adapter* }
%struct.TYPE_2__ = type { i32 }

@DEBUG_MAX_NAME_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"zfcp_%s_rec\00", align 1
@zfcp_dbf_rec_view = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"zfcp_%s_hba\00", align 1
@zfcp_dbf_hba_view = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"zfcp_%s_san\00", align 1
@zfcp_dbf_san_view = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"zfcp_%s_scsi\00", align 1
@zfcp_dbf_scsi_view = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_dbf_adapter_register(%struct.zfcp_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_adapter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.zfcp_dbf*, align 8
  %7 = alloca i32, align 4
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %3, align 8
  %8 = load i32, i32* @DEBUG_MAX_NAME_LEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.zfcp_dbf* @kmalloc(i32 56, i32 %12)
  store %struct.zfcp_dbf* %13, %struct.zfcp_dbf** %6, align 8
  %14 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %15 = icmp ne %struct.zfcp_dbf* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %103

19:                                               ; preds = %1
  %20 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %21 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %22 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %21, i32 0, i32 8
  store %struct.zfcp_adapter* %20, %struct.zfcp_adapter** %22, align 8
  %23 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %24 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %23, i32 0, i32 7
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %27 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %26, i32 0, i32 6
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %30 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %29, i32 0, i32 5
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %33 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %32, i32 0, i32 4
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i8* @dev_name(i32* %38)
  %40 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = call i8* @zfcp_dbf_reg(i8* %11, i32 3, i32* @zfcp_dbf_rec_view, i32 4)
  %42 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %43 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %45 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %19
  br label %98

49:                                               ; preds = %19
  %50 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i8* @dev_name(i32* %53)
  %55 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  %56 = call i8* @zfcp_dbf_reg(i8* %11, i32 3, i32* @zfcp_dbf_hba_view, i32 4)
  %57 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %58 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %60 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %49
  br label %98

64:                                               ; preds = %49
  %65 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = call i8* @dev_name(i32* %68)
  %70 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  %71 = call i8* @zfcp_dbf_reg(i8* %11, i32 6, i32* @zfcp_dbf_san_view, i32 4)
  %72 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %73 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %75 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %64
  br label %98

79:                                               ; preds = %64
  %80 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = call i8* @dev_name(i32* %83)
  %85 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %84)
  %86 = call i8* @zfcp_dbf_reg(i8* %11, i32 3, i32* @zfcp_dbf_scsi_view, i32 4)
  %87 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %88 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  %89 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %90 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %79
  br label %98

94:                                               ; preds = %79
  %95 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %96 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %97 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %96, i32 0, i32 0
  store %struct.zfcp_dbf* %95, %struct.zfcp_dbf** %97, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %103

98:                                               ; preds = %93, %78, %63, %48
  %99 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %100 = call i32 @zfcp_dbf_adapter_unregister(%struct.zfcp_dbf* %99)
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %103

103:                                              ; preds = %98, %94, %16
  %104 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.zfcp_dbf* @kmalloc(i32, i32) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i8* @dev_name(i32*) #2

declare dso_local i8* @zfcp_dbf_reg(i8*, i32, i32*, i32) #2

declare dso_local i32 @zfcp_dbf_adapter_unregister(%struct.zfcp_dbf*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
