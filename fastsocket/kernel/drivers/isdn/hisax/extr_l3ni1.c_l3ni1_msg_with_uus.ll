; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_msg_with_uus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_msg_with_uus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.sk_buff = type { i32 }

@IE_USER_USER = common dso_local global i32 0, align 4
@DL_DATA = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32)* @l3ni1_msg_with_uus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3ni1_msg_with_uus(%struct.l3_process* %0, i32 %1) #0 {
  %3 = alloca %struct.l3_process*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca [56 x i32], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.l3_process* %0, %struct.l3_process** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = getelementptr inbounds [56 x i32], [56 x i32]* %6, i64 0, i64 0
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = load %struct.l3_process*, %struct.l3_process** %3, align 8
  %12 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @MsgHead(i32* %10, i32 %13, i32 %14)
  %16 = load %struct.l3_process*, %struct.l3_process** %3, align 8
  %17 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %2
  %25 = load i32, i32* @IE_USER_USER, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  %28 = load %struct.l3_process*, %struct.l3_process** %3, align 8
  %29 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = add nsw i64 %33, 1
  %35 = trunc i64 %34 to i32
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %7, align 8
  store i32 4, i32* %38, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.l3_process*, %struct.l3_process** %3, align 8
  %42 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strcpy(i32* %40, i8* %45)
  %47 = load %struct.l3_process*, %struct.l3_process** %3, align 8
  %48 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @strlen(i8* %51)
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 %52
  store i32* %54, i32** %7, align 8
  %55 = load %struct.l3_process*, %struct.l3_process** %3, align 8
  %56 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  store i8 0, i8* %60, align 1
  br label %61

61:                                               ; preds = %24, %2
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds [56 x i32], [56 x i32]* %6, i64 0, i64 0
  %64 = ptrtoint i32* %62 to i64
  %65 = ptrtoint i32* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 4
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call %struct.sk_buff* @l3_alloc_skb(i32 %69)
  store %struct.sk_buff* %70, %struct.sk_buff** %5, align 8
  %71 = icmp ne %struct.sk_buff* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %61
  br label %88

73:                                               ; preds = %61
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @skb_put(%struct.sk_buff* %74, i32 %75)
  %77 = getelementptr inbounds [56 x i32], [56 x i32]* %6, i64 0, i64 0
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @memcpy(i32 %76, i32* %77, i32 %78)
  %80 = load %struct.l3_process*, %struct.l3_process** %3, align 8
  %81 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @DL_DATA, align 4
  %84 = load i32, i32* @REQUEST, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = call i32 @l3_msg(i32 %82, i32 %85, %struct.sk_buff* %86)
  br label %88

88:                                               ; preds = %73, %72
  ret void
}

declare dso_local i32 @MsgHead(i32*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32*, i8*) #1

declare dso_local %struct.sk_buff* @l3_alloc_skb(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @l3_msg(i32, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
