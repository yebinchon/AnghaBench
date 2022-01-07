; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_faulty.c_add_sector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_faulty.c_add_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.faulty_conf = type { i32, i64*, i32* }

@AllPersist = common dso_local global i8* null, align 8
@MaxFault = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.faulty_conf*, i64, i32)* @add_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_sector(%struct.faulty_conf* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.faulty_conf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.faulty_conf* %0, %struct.faulty_conf** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.faulty_conf*, %struct.faulty_conf** %4, align 8
  %10 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %148, %3
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.faulty_conf*, %struct.faulty_conf** %4, align 8
  %15 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %151

18:                                               ; preds = %12
  %19 = load %struct.faulty_conf*, %struct.faulty_conf** %4, align 8
  %20 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %135

28:                                               ; preds = %18
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %134 [
    i32 131, label %30
    i32 128, label %38
    i32 129, label %73
    i32 130, label %99
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.faulty_conf*, %struct.faulty_conf** %4, align 8
  %33 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %31, i32* %37, align 4
  br label %181

38:                                               ; preds = %28
  %39 = load %struct.faulty_conf*, %struct.faulty_conf** %4, align 8
  %40 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 129
  br i1 %46, label %56, label %47

47:                                               ; preds = %38
  %48 = load %struct.faulty_conf*, %struct.faulty_conf** %4, align 8
  %49 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 130
  br i1 %55, label %56, label %65

56:                                               ; preds = %47, %38
  %57 = load i8*, i8** @AllPersist, align 8
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.faulty_conf*, %struct.faulty_conf** %4, align 8
  %60 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %58, i32* %64, align 4
  br label %72

65:                                               ; preds = %47
  %66 = load %struct.faulty_conf*, %struct.faulty_conf** %4, align 8
  %67 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 128, i32* %71, align 4
  br label %72

72:                                               ; preds = %65, %56
  br label %181

73:                                               ; preds = %28
  %74 = load %struct.faulty_conf*, %struct.faulty_conf** %4, align 8
  %75 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 128
  br i1 %81, label %82, label %91

82:                                               ; preds = %73
  %83 = load i8*, i8** @AllPersist, align 8
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.faulty_conf*, %struct.faulty_conf** %4, align 8
  %86 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %84, i32* %90, align 4
  br label %98

91:                                               ; preds = %73
  %92 = load %struct.faulty_conf*, %struct.faulty_conf** %4, align 8
  %93 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 129, i32* %97, align 4
  br label %98

98:                                               ; preds = %91, %82
  br label %181

99:                                               ; preds = %28
  %100 = load %struct.faulty_conf*, %struct.faulty_conf** %4, align 8
  %101 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 128
  br i1 %107, label %117, label %108

108:                                              ; preds = %99
  %109 = load %struct.faulty_conf*, %struct.faulty_conf** %4, align 8
  %110 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 129
  br i1 %116, label %117, label %126

117:                                              ; preds = %108, %99
  %118 = load i8*, i8** @AllPersist, align 8
  %119 = ptrtoint i8* %118 to i32
  %120 = load %struct.faulty_conf*, %struct.faulty_conf** %4, align 8
  %121 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %119, i32* %125, align 4
  br label %133

126:                                              ; preds = %108
  %127 = load %struct.faulty_conf*, %struct.faulty_conf** %4, align 8
  %128 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 130, i32* %132, align 4
  br label %133

133:                                              ; preds = %126, %117
  br label %181

134:                                              ; preds = %28
  br label %147

135:                                              ; preds = %18
  %136 = load %struct.faulty_conf*, %struct.faulty_conf** %4, align 8
  %137 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 131
  br i1 %143, label %144, label %146

144:                                              ; preds = %135
  %145 = load i32, i32* %7, align 4
  store i32 %145, i32* %8, align 4
  br label %146

146:                                              ; preds = %144, %135
  br label %147

147:                                              ; preds = %146, %134
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %12

151:                                              ; preds = %12
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* @MaxFault, align 4
  %154 = icmp sge i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %181

156:                                              ; preds = %151
  %157 = load i64, i64* %5, align 8
  %158 = load %struct.faulty_conf*, %struct.faulty_conf** %4, align 8
  %159 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %158, i32 0, i32 1
  %160 = load i64*, i64** %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  store i64 %157, i64* %163, align 8
  %164 = load i32, i32* %6, align 4
  %165 = load %struct.faulty_conf*, %struct.faulty_conf** %4, align 8
  %166 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %165, i32 0, i32 2
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 %164, i32* %170, align 4
  %171 = load %struct.faulty_conf*, %struct.faulty_conf** %4, align 8
  %172 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %8, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %156
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, 1
  %179 = load %struct.faulty_conf*, %struct.faulty_conf** %4, align 8
  %180 = getelementptr inbounds %struct.faulty_conf, %struct.faulty_conf* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  br label %181

181:                                              ; preds = %30, %72, %98, %133, %155, %176, %156
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
