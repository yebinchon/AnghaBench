; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_xirc2ps_cs.c_set_addresses.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_xirc2ps_cs.c_set_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i8*, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i8*, %struct.dev_mc_list* }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @set_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_addresses(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.dev_mc_list*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %3, align 4
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call %struct.TYPE_3__* @netdev_priv(%struct.net_device* %14)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %4, align 8
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 3
  %18 = load %struct.dev_mc_list*, %struct.dev_mc_list** %17, align 8
  store %struct.dev_mc_list* %18, %struct.dev_mc_list** %5, align 8
  store i32 80, i32* %9, align 4
  %19 = call i32 @SelectPage(i32 80)
  store i32 0, i32* %7, align 4
  store i32 8, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %96, %1
  %21 = load i32, i32* %7, align 4
  %22 = icmp sgt i32 %21, 5
  br i1 %22, label %23, label %45

23:                                               ; preds = %20
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %10, align 4
  %26 = icmp sgt i32 %25, 9
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %101

28:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sle i32 %32, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %39 = icmp ne %struct.dev_mc_list* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %42 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %41, i32 0, i32 1
  %43 = load %struct.dev_mc_list*, %struct.dev_mc_list** %42, align 8
  store %struct.dev_mc_list* %43, %struct.dev_mc_list** %5, align 8
  br label %44

44:                                               ; preds = %40, %37, %31, %28
  br label %45

45:                                               ; preds = %44, %20
  %46 = load i32, i32* %8, align 4
  %47 = icmp sgt i32 %46, 15
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  store i32 8, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @SelectPage(i32 %51)
  br label %53

53:                                               ; preds = %48, %45
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp sle i32 %57, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %64 = icmp ne %struct.dev_mc_list* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %67 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %6, align 8
  br label %73

69:                                               ; preds = %62, %56, %53
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %6, align 8
  br label %73

73:                                               ; preds = %69, %65
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load i32, i32* %8, align 4
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sub nsw i32 5, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = call i32 @PutByte(i32 %79, i8 zeroext %85)
  br label %95

87:                                               ; preds = %73
  %88 = load i32, i32* %8, align 4
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = call i32 @PutByte(i32 %88, i8 zeroext %93)
  br label %95

95:                                               ; preds = %87, %78
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %20

101:                                              ; preds = %27
  %102 = call i32 @SelectPage(i32 0)
  ret void
}

declare dso_local %struct.TYPE_3__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SelectPage(i32) #1

declare dso_local i32 @PutByte(i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
