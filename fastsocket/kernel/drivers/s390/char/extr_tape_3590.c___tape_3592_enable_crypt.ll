; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c___tape_3592_enable_crypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_3590.c___tape_3592_enable_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_request = type { i8*, i64, i32 }
%struct.tape_device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"tape_3592_enable_crypt\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@TO_CRYPT_ON = common dso_local global i32 0, align 4
@MODE_SET_CB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tape_request* (%struct.tape_device*)* @__tape_3592_enable_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tape_request* @__tape_3592_enable_crypt(%struct.tape_device* %0) #0 {
  %2 = alloca %struct.tape_request*, align 8
  %3 = alloca %struct.tape_device*, align 8
  %4 = alloca %struct.tape_request*, align 8
  %5 = alloca i8*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %3, align 8
  %6 = call i32 @DBF_EVENT(i32 6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.tape_device*, %struct.tape_device** %3, align 8
  %8 = call i32 @crypt_supported(%struct.tape_device* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOSYS, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.tape_request* @ERR_PTR(i32 %12)
  store %struct.tape_request* %13, %struct.tape_request** %2, align 8
  br label %61

14:                                               ; preds = %1
  %15 = call %struct.tape_request* @tape_alloc_request(i32 2, i32 72)
  store %struct.tape_request* %15, %struct.tape_request** %4, align 8
  %16 = load %struct.tape_request*, %struct.tape_request** %4, align 8
  %17 = call i64 @IS_ERR(%struct.tape_request* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load %struct.tape_request*, %struct.tape_request** %4, align 8
  store %struct.tape_request* %20, %struct.tape_request** %2, align 8
  br label %61

21:                                               ; preds = %14
  %22 = load %struct.tape_request*, %struct.tape_request** %4, align 8
  %23 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @memset(i8* %25, i32 0, i32 72)
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 5, i8* %28, align 1
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 36
  store i8 3, i8* %30, align 1
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 37
  store i8 3, i8* %32, align 1
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 40
  store i8 64, i8* %34, align 1
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 42
  store i8 1, i8* %36, align 1
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 50
  store i8 47, i8* %38, align 1
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 54
  store i8 -61, i8* %40, align 1
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 71
  store i8 114, i8* %42, align 1
  %43 = load i32, i32* @TO_CRYPT_ON, align 4
  %44 = load %struct.tape_request*, %struct.tape_request** %4, align 8
  %45 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.tape_request*, %struct.tape_request** %4, align 8
  %47 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @MODE_SET_CB, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @tape_ccw_cc(i64 %48, i32 %49, i32 36, i8* %50)
  %52 = load %struct.tape_request*, %struct.tape_request** %4, align 8
  %53 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  %56 = load i32, i32* @MODE_SET_CB, align 4
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 36
  %59 = call i32 @tape_ccw_end(i64 %55, i32 %56, i32 36, i8* %58)
  %60 = load %struct.tape_request*, %struct.tape_request** %4, align 8
  store %struct.tape_request* %60, %struct.tape_request** %2, align 8
  br label %61

61:                                               ; preds = %21, %19, %10
  %62 = load %struct.tape_request*, %struct.tape_request** %2, align 8
  ret %struct.tape_request* %62
}

declare dso_local i32 @DBF_EVENT(i32, i8*) #1

declare dso_local i32 @crypt_supported(%struct.tape_device*) #1

declare dso_local %struct.tape_request* @ERR_PTR(i32) #1

declare dso_local %struct.tape_request* @tape_alloc_request(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.tape_request*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @tape_ccw_cc(i64, i32, i32, i8*) #1

declare dso_local i32 @tape_ccw_end(i64, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
