; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_build_l2tp_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_build_l2tp_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pppol2tp_session = type { i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@L2TP_HDR_VER = common dso_local global i32 0, align 4
@L2TP_HDRFLAG_S = common dso_local global i32 0, align 4
@PPPOL2TP_MSG_SEQ = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: updated ns to %hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pppol2tp_session*, i8*)* @pppol2tp_build_l2tp_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pppol2tp_build_l2tp_header(%struct.pppol2tp_session* %0, i8* %1) #0 {
  %3 = alloca %struct.pppol2tp_session*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.pppol2tp_session* %0, %struct.pppol2tp_session** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %5, align 8
  %9 = load i32, i32* @L2TP_HDR_VER, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %11 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @L2TP_HDRFLAG_S, align 4
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* %6, align 4
  %20 = call i8* @htons(i32 %19)
  %21 = ptrtoint i8* %20 to i32
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %5, align 8
  store i32 %21, i32* %22, align 4
  %24 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %25 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @htons(i32 %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  %32 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %33 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @htons(i32 %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  %40 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %41 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %18
  %45 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %46 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @htons(i32 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %5, align 8
  store i32 0, i32* %52, align 4
  %54 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %55 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %59 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @PPPOL2TP_MSG_SEQ, align 4
  %62 = load i32, i32* @KERN_DEBUG, align 4
  %63 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %64 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %67 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @PRINTK(i32 %60, i32 %61, i32 %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %44, %18
  ret void
}

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @PRINTK(i32, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
