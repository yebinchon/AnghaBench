; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_get_ufi_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_get_ufi_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.flash_file_hdr_g3 = type { i8*, i32 }

@UFI_TYPE4 = common dso_local global i32 0, align 4
@UFI_TYPE3R = common dso_local global i32 0, align 4
@UFI_TYPE3 = common dso_local global i32 0, align 4
@UFI_TYPE2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"UFI and Interface are not compatible for flashing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*, %struct.flash_file_hdr_g3*)* @be_get_ufi_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_get_ufi_type(%struct.be_adapter* %0, %struct.flash_file_hdr_g3* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca %struct.flash_file_hdr_g3*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store %struct.flash_file_hdr_g3* %1, %struct.flash_file_hdr_g3** %5, align 8
  %6 = load %struct.flash_file_hdr_g3*, %struct.flash_file_hdr_g3** %5, align 8
  %7 = icmp eq %struct.flash_file_hdr_g3* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %61

9:                                                ; preds = %2
  %10 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %11 = call i64 @skyhawk_chip(%struct.be_adapter* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load %struct.flash_file_hdr_g3*, %struct.flash_file_hdr_g3** %5, align 8
  %15 = getelementptr inbounds %struct.flash_file_hdr_g3, %struct.flash_file_hdr_g3* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 52
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @UFI_TYPE4, align 4
  store i32 %22, i32* %3, align 4
  br label %67

23:                                               ; preds = %13, %9
  %24 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %25 = call i64 @BE3_chip(%struct.be_adapter* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load %struct.flash_file_hdr_g3*, %struct.flash_file_hdr_g3** %5, align 8
  %29 = getelementptr inbounds %struct.flash_file_hdr_g3, %struct.flash_file_hdr_g3* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 51
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = load %struct.flash_file_hdr_g3*, %struct.flash_file_hdr_g3** %5, align 8
  %37 = getelementptr inbounds %struct.flash_file_hdr_g3, %struct.flash_file_hdr_g3* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 16
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @UFI_TYPE3R, align 4
  store i32 %41, i32* %3, align 4
  br label %67

42:                                               ; preds = %35
  %43 = load i32, i32* @UFI_TYPE3, align 4
  store i32 %43, i32* %3, align 4
  br label %67

44:                                               ; preds = %27, %23
  %45 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %46 = call i64 @BE2_chip(%struct.be_adapter* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load %struct.flash_file_hdr_g3*, %struct.flash_file_hdr_g3** %5, align 8
  %50 = getelementptr inbounds %struct.flash_file_hdr_g3, %struct.flash_file_hdr_g3* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 50
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @UFI_TYPE2, align 4
  store i32 %57, i32* %3, align 4
  br label %67

58:                                               ; preds = %48, %44
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60, %8
  %62 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %63 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %67

67:                                               ; preds = %61, %56, %42, %40, %21
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @skyhawk_chip(%struct.be_adapter*) #1

declare dso_local i64 @BE3_chip(%struct.be_adapter*) #1

declare dso_local i64 @BE2_chip(%struct.be_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
