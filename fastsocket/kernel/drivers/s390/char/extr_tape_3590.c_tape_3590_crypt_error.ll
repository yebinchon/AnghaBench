; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3590_crypt_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c_tape_3590_crypt_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.tape_request = type { i32 }
%struct.irb = type { i64 }
%struct.tape_3590_sense = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@EKEYREJECTED = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"The tape unit failed to obtain the encryption key from EKM\0A\00", align 1
@ENOKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*, %struct.tape_request*, %struct.irb*)* @tape_3590_crypt_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tape_3590_crypt_error(%struct.tape_device* %0, %struct.tape_request* %1, %struct.irb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tape_device*, align 8
  %6 = alloca %struct.tape_request*, align 8
  %7 = alloca %struct.irb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %5, align 8
  store %struct.tape_request* %1, %struct.tape_request** %6, align 8
  store %struct.irb* %2, %struct.irb** %7, align 8
  %14 = load %struct.irb*, %struct.irb** %7, align 8
  %15 = getelementptr inbounds %struct.irb, %struct.irb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.tape_3590_sense*
  %18 = getelementptr inbounds %struct.tape_3590_sense, %struct.tape_3590_sense* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %13, align 8
  %21 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %22 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i8* @dev_name(i32* %24)
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load i8*, i8** %13, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 5
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 16777215
  store i32 %34, i32* %11, align 4
  %35 = load i8*, i8** %13, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 9
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  store i32 %38, i32* %9, align 4
  %39 = load i8*, i8** %13, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 10
  %41 = bitcast i8* %40 to i32*
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %3
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 60977
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %50 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %51 = load %struct.irb*, %struct.irb** %7, align 8
  %52 = load i32, i32* @EKEYREJECTED, align 4
  %53 = sub nsw i32 0, %52
  %54 = call i32 @tape_3590_erp_basic(%struct.tape_device* %49, %struct.tape_request* %50, %struct.irb* %51, i32 %53)
  store i32 %54, i32* %4, align 4
  br label %80

55:                                               ; preds = %45, %3
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %68

61:                                               ; preds = %58, %55
  %62 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %63 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %64 = load %struct.irb*, %struct.irb** %7, align 8
  %65 = load i32, i32* @ENOTCONN, align 4
  %66 = sub nsw i32 0, %65
  %67 = call i32 @tape_3590_erp_basic(%struct.tape_device* %62, %struct.tape_request* %63, %struct.irb* %64, i32 %66)
  store i32 %67, i32* %4, align 4
  br label %80

68:                                               ; preds = %58
  %69 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %70 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.tape_device*, %struct.tape_device** %5, align 8
  %75 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %76 = load %struct.irb*, %struct.irb** %7, align 8
  %77 = load i32, i32* @ENOKEY, align 4
  %78 = sub nsw i32 0, %77
  %79 = call i32 @tape_3590_erp_basic(%struct.tape_device* %74, %struct.tape_request* %75, %struct.irb* %76, i32 %78)
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %68, %61, %48
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @tape_3590_erp_basic(%struct.tape_device*, %struct.tape_request*, %struct.irb*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
