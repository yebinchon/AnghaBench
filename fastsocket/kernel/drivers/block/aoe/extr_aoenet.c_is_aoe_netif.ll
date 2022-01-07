; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoenet.c_is_aoe_netif.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoenet.c_is_aoe_netif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8* }

@aoe_iflist = common dso_local global i8* null, align 8
@WHITESPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_aoe_netif(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load i8*, i8** @aoe_iflist, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %74

13:                                               ; preds = %1
  %14 = load i8*, i8** @aoe_iflist, align 8
  %15 = load i8*, i8** @aoe_iflist, align 8
  %16 = load i32, i32* @WHITESPACE, align 4
  %17 = call i32 @strspn(i8* %15, i32 %16)
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %14, i64 %18
  store i8* %19, i8** %4, align 8
  br label %20

20:                                               ; preds = %66, %13
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %73

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* @WHITESPACE, align 4
  %28 = call i32 @strcspn(i8* %26, i32 %27)
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %25, i64 %29
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = icmp ne i8* %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %6, align 4
  br label %44

41:                                               ; preds = %24
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @strlen(i8* %42)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %41, %34
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @strncmp(i8* %54, i8* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %51
  store i32 1, i32* %2, align 4
  br label %74

60:                                               ; preds = %51, %44
  %61 = load i8*, i8** %5, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %73

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65
  %67 = load i8*, i8** %5, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* @WHITESPACE, align 4
  %70 = call i32 @strspn(i8* %68, i32 %69)
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %67, i64 %71
  store i8* %72, i8** %4, align 8
  br label %20

73:                                               ; preds = %64, %20
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %59, %12
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @strspn(i8*, i32) #1

declare dso_local i32 @strcspn(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
