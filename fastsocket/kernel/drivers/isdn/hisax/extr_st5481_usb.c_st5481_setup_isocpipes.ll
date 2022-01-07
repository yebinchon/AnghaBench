; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_usb.c_st5481_setup_isocpipes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_usb.c_st5481_setup_isocpipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32* }
%struct.usb_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st5481_setup_isocpipes(%struct.urb** %0, %struct.usb_device* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.urb**, align 8
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.urb** %0, %struct.urb*** %10, align 8
  store %struct.usb_device* %1, %struct.usb_device** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store i32 0, i32* %18, align 4
  br label %21

21:                                               ; preds = %62, %8
  %22 = load i32, i32* %18, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %65

24:                                               ; preds = %21
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %19, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.urb* @usb_alloc_urb(i32 %27, i32 %28)
  %30 = load %struct.urb**, %struct.urb*** %10, align 8
  %31 = load i32, i32* %18, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.urb*, %struct.urb** %30, i64 %32
  store %struct.urb* %29, %struct.urb** %33, align 8
  %34 = load %struct.urb**, %struct.urb*** %10, align 8
  %35 = load i32, i32* %18, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.urb*, %struct.urb** %34, i64 %36
  %38 = load %struct.urb*, %struct.urb** %37, align 8
  %39 = icmp ne %struct.urb* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %24
  br label %66

41:                                               ; preds = %24
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @kmalloc(i32 %42, i32 %43)
  store i8* %44, i8** %20, align 8
  %45 = load i8*, i8** %20, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  br label %66

48:                                               ; preds = %41
  %49 = load %struct.urb**, %struct.urb*** %10, align 8
  %50 = load i32, i32* %18, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.urb*, %struct.urb** %49, i64 %51
  %53 = load %struct.urb*, %struct.urb** %52, align 8
  %54 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i8*, i8** %20, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load i8*, i8** %17, align 8
  %61 = call i32 @fill_isoc_urb(%struct.urb* %53, %struct.usb_device* %54, i32 %55, i8* %56, i32 %57, i32 %58, i32 %59, i8* %60)
  br label %62

62:                                               ; preds = %48
  %63 = load i32, i32* %18, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %18, align 4
  br label %21

65:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %108

66:                                               ; preds = %47, %40
  store i32 0, i32* %18, align 4
  br label %67

67:                                               ; preds = %103, %66
  %68 = load i32, i32* %18, align 4
  %69 = icmp slt i32 %68, 2
  br i1 %69, label %70, label %106

70:                                               ; preds = %67
  %71 = load %struct.urb**, %struct.urb*** %10, align 8
  %72 = load i32, i32* %18, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.urb*, %struct.urb** %71, i64 %73
  %75 = load %struct.urb*, %struct.urb** %74, align 8
  %76 = icmp ne %struct.urb* %75, null
  br i1 %76, label %77, label %102

77:                                               ; preds = %70
  %78 = load %struct.urb**, %struct.urb*** %10, align 8
  %79 = load i32, i32* %18, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.urb*, %struct.urb** %78, i64 %80
  %82 = load %struct.urb*, %struct.urb** %81, align 8
  %83 = getelementptr inbounds %struct.urb, %struct.urb* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @kfree(i32* %84)
  %86 = load %struct.urb**, %struct.urb*** %10, align 8
  %87 = load i32, i32* %18, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.urb*, %struct.urb** %86, i64 %88
  %90 = load %struct.urb*, %struct.urb** %89, align 8
  %91 = getelementptr inbounds %struct.urb, %struct.urb* %90, i32 0, i32 0
  store i32* null, i32** %91, align 8
  %92 = load %struct.urb**, %struct.urb*** %10, align 8
  %93 = load i32, i32* %18, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.urb*, %struct.urb** %92, i64 %94
  %96 = load %struct.urb*, %struct.urb** %95, align 8
  %97 = call i32 @usb_free_urb(%struct.urb* %96)
  %98 = load %struct.urb**, %struct.urb*** %10, align 8
  %99 = load i32, i32* %18, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.urb*, %struct.urb** %98, i64 %100
  store %struct.urb* null, %struct.urb** %101, align 8
  br label %102

102:                                              ; preds = %77, %70
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %18, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %18, align 4
  br label %67

106:                                              ; preds = %67
  %107 = load i32, i32* %19, align 4
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %106, %65
  %109 = load i32, i32* %9, align 4
  ret i32 %109
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @fill_isoc_urb(%struct.urb*, %struct.usb_device*, i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
