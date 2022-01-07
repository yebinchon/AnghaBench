; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_ubd_kern.c_do_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_ubd_kern.c_do_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_thread_req = type { i32, i32, i8*, i32, i64, i32*, i64*, i64, i32 }

@.str = private unnamed_addr constant [33 x i8] c"do_io - lseek failed : err = %d\0A\00", align 1
@UBD_READ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"do_io - read failed, err = %d fd = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"do_io - write failed err = %d fd = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_thread_req*)* @do_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_io(%struct.io_thread_req* %0) #0 {
  %2 = alloca %struct.io_thread_req*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.io_thread_req* %0, %struct.io_thread_req** %2, align 8
  %12 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %13 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %16 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %14, %17
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %196, %1
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %22 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %21, i32 0, i32 8
  %23 = bitcast i32* %22 to i8*
  %24 = call i32 @ubd_test_bit(i32 %20, i8* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %40, %19
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %33 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %32, i32 0, i32 8
  %34 = bitcast i32* %33 to i8*
  %35 = call i32 @ubd_test_bit(i32 %31, i8* %34)
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %35, %36
  br label %38

38:                                               ; preds = %30, %26
  %39 = phi i1 [ false, %26 ], [ %37, %30 ]
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %26

43:                                               ; preds = %38
  %44 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %45 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %48 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %47, i32 0, i32 6
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %46, %53
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %57 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %55, %58
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %54, %60
  store i64 %61, i64* %11, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 %62, %63
  %65 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %66 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %64, %67
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %4, align 8
  %70 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %71 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %75 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %73, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %72, i64 %78
  store i8* %79, i8** %3, align 8
  %80 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %81 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %80, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @os_seek_file(i32 %86, i64 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %43
  %92 = load i32, i32* %10, align 4
  %93 = sub nsw i32 0, %92
  %94 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %96 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %95, i32 0, i32 3
  store i32 1, i32* %96, align 8
  br label %205

97:                                               ; preds = %43
  %98 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %99 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @UBD_READ, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %165

103:                                              ; preds = %97
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %147, %103
  %105 = load i8*, i8** %3, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  store i8* %108, i8** %3, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* %4, align 8
  %112 = sub i64 %111, %110
  store i64 %112, i64* %4, align 8
  %113 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %114 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %113, i32 0, i32 5
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i8*, i8** %3, align 8
  %121 = load i64, i64* %4, align 8
  %122 = call i32 @os_read_file(i32 %119, i8* %120, i64 %121)
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %104
  %126 = load i32, i32* %5, align 4
  %127 = sub nsw i32 0, %126
  %128 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %129 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %128, i32 0, i32 5
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %127, i32 %134)
  %136 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %137 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %136, i32 0, i32 3
  store i32 1, i32* %137, align 8
  br label %205

138:                                              ; preds = %104
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = load i64, i64* %4, align 8
  %143 = icmp ult i64 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load i32, i32* %5, align 4
  %146 = icmp ne i32 %145, 0
  br label %147

147:                                              ; preds = %144, %139
  %148 = phi i1 [ false, %139 ], [ %146, %144 ]
  br i1 %148, label %104, label %149

149:                                              ; preds = %147
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* %4, align 8
  %153 = icmp ult i64 %151, %152
  br i1 %153, label %154, label %164

154:                                              ; preds = %149
  %155 = load i8*, i8** %3, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i64, i64* %4, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = sub i64 %159, %161
  %163 = call i32 @memset(i8* %158, i32 0, i64 %162)
  br label %164

164:                                              ; preds = %154, %149
  br label %194

165:                                              ; preds = %97
  %166 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %167 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %166, i32 0, i32 5
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i8*, i8** %3, align 8
  %174 = load i64, i64* %4, align 8
  %175 = call i32 @os_write_file(i32 %172, i8* %173, i64 %174)
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* %5, align 4
  %177 = sext i32 %176 to i64
  %178 = load i64, i64* %4, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %180, label %193

180:                                              ; preds = %165
  %181 = load i32, i32* %5, align 4
  %182 = sub nsw i32 0, %181
  %183 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %184 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %183, i32 0, i32 5
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %182, i32 %189)
  %191 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %192 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %191, i32 0, i32 3
  store i32 1, i32* %192, align 8
  br label %205

193:                                              ; preds = %165
  br label %194

194:                                              ; preds = %193, %164
  %195 = load i32, i32* %8, align 4
  store i32 %195, i32* %7, align 4
  br label %196

196:                                              ; preds = %194
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* %6, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %19, label %200

200:                                              ; preds = %196
  %201 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %202 = call i32 @update_bitmap(%struct.io_thread_req* %201)
  %203 = load %struct.io_thread_req*, %struct.io_thread_req** %2, align 8
  %204 = getelementptr inbounds %struct.io_thread_req, %struct.io_thread_req* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 8
  br label %205

205:                                              ; preds = %200, %180, %125, %91
  ret void
}

declare dso_local i32 @ubd_test_bit(i32, i8*) #1

declare dso_local i32 @os_seek_file(i32, i64) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @os_read_file(i32, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @os_write_file(i32, i8*, i64) #1

declare dso_local i32 @update_bitmap(%struct.io_thread_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
