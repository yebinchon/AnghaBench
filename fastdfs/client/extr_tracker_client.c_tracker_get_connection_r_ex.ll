; ModuleID = '/home/carl/AnghaBench/fastdfs/client/extr_tracker_client.c_tracker_get_connection_r_ex.c'
source_filename = "/home/carl/AnghaBench/fastdfs/client/extr_tracker_client.c_tracker_get_connection_r_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @tracker_get_connection_r_ex(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %20, %3
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @memcpy(i32* %29, i32* %30, i32 4)
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @fdfs_server_sock_reset(i32* %32)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32* @tracker_connect_server(i32* %34, i32* %35)
  store i32* %36, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %22
  br label %119

39:                                               ; preds = %22
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32* %49, i32** %9, align 8
  br label %50

50:                                               ; preds = %77, %39
  %51 = load i32*, i32** %9, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = icmp ult i32* %51, %52
  br i1 %53, label %54, label %80

54:                                               ; preds = %50
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @memcpy(i32* %55, i32* %56, i32 4)
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @fdfs_server_sock_reset(i32* %58)
  %60 = load i32*, i32** %5, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i32* @tracker_connect_server(i32* %60, i32* %61)
  store i32* %62, i32** %7, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %54
  %65 = load i32*, i32** %9, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = ptrtoint i32* %65 to i64
  %70 = ptrtoint i32* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %80

76:                                               ; preds = %54
  br label %77

77:                                               ; preds = %76
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %9, align 8
  br label %50

80:                                               ; preds = %64, %50
  %81 = load i32*, i32** %7, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %119

84:                                               ; preds = %80
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** %9, align 8
  br label %88

88:                                               ; preds = %115, %84
  %89 = load i32*, i32** %9, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = icmp ult i32* %89, %90
  br i1 %91, label %92, label %118

92:                                               ; preds = %88
  %93 = load i32*, i32** %5, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = call i32 @memcpy(i32* %93, i32* %94, i32 4)
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @fdfs_server_sock_reset(i32* %96)
  %98 = load i32*, i32** %5, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = call i32* @tracker_connect_server(i32* %98, i32* %99)
  store i32* %100, i32** %7, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %114

102:                                              ; preds = %92
  %103 = load i32*, i32** %9, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = ptrtoint i32* %103 to i64
  %108 = ptrtoint i32* %106 to i64
  %109 = sub i64 %107, %108
  %110 = sdiv exact i64 %109, 4
  %111 = trunc i64 %110 to i32
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %118

114:                                              ; preds = %92
  br label %115

115:                                              ; preds = %114
  %116 = load i32*, i32** %9, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %9, align 8
  br label %88

118:                                              ; preds = %102, %88
  br label %119

119:                                              ; preds = %118, %83, %38
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp sge i32 %126, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %119
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  store i32 0, i32* %133, align 8
  br label %134

134:                                              ; preds = %131, %119
  %135 = load i32*, i32** %7, align 8
  ret i32* %135
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @fdfs_server_sock_reset(i32*) #1

declare dso_local i32* @tracker_connect_server(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
