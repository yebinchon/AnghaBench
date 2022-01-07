; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tty3270.c_tty3270_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i64, %struct.TYPE_7__, %struct.tty3270*, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.tty3270 = type { i32, %struct.TYPE_8__, %struct.TYPE_9__*, %struct.tty_struct*, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32*, %struct.tty_struct* }
%struct.file = type { i32 }

@tty3270_fn = common dso_local global i32 0, align 4
@RAW3270_FIRSTMINOR = common dso_local global i64 0, align 8
@TF_INPUT = common dso_local global i32 0, align 4
@tty3270_max_index = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@tty3270_update = common dso_local global i64 0, align 8
@tty3270_read_tasklet = common dso_local global i64 0, align 8
@tty3270_exit_tty = common dso_local global i32 0, align 4
@K_INCRCONSOLE = common dso_local global i32 0, align 4
@tty3270_scroll_backward = common dso_local global i32 0, align 4
@K_SCROLLBACK = common dso_local global i32 0, align 4
@tty3270_scroll_forward = common dso_local global i32 0, align 4
@K_SCROLLFORW = common dso_local global i32 0, align 4
@tty3270_rcl_backward = common dso_local global i32 0, align 4
@K_CONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @tty3270_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty3270_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.tty3270*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %237

14:                                               ; preds = %2
  %15 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %16 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RAW3270_FIRSTMINOR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i64 @raw3270_find_view(i32* @tty3270_fn, i64 %19)
  %21 = inttoptr i64 %20 to %struct.tty3270*
  store %struct.tty3270* %21, %struct.tty3270** %6, align 8
  %22 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %23 = call i64 @IS_ERR(%struct.tty3270* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %57, label %25

25:                                               ; preds = %14
  %26 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %27 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %28 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %27, i32 0, i32 3
  store %struct.tty3270* %26, %struct.tty3270** %28, align 8
  %29 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %30 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 2
  %34 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %35 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %38 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %42 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %45 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %47 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %48 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %47, i32 0, i32 3
  store %struct.tty_struct* %46, %struct.tty_struct** %48, align 8
  %49 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %50 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %51 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %50, i32 0, i32 2
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  store %struct.tty_struct* %49, %struct.tty_struct** %53, align 8
  %54 = load i32, i32* @TF_INPUT, align 4
  %55 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %56 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %55, i32 0, i32 10
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %3, align 4
  br label %237

57:                                               ; preds = %14
  %58 = load i64, i64* @tty3270_max_index, align 8
  %59 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %60 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  %63 = icmp slt i64 %58, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %66 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* @tty3270_max_index, align 8
  br label %69

69:                                               ; preds = %64, %57
  %70 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %71 = call i32 @PTR_ERR(%struct.tty3270* %70)
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %237

78:                                               ; preds = %69
  %79 = call %struct.tty3270* (...) @tty3270_alloc_view()
  store %struct.tty3270* %79, %struct.tty3270** %6, align 8
  %80 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %81 = call i64 @IS_ERR(%struct.tty3270* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %85 = call i32 @PTR_ERR(%struct.tty3270* %84)
  store i32 %85, i32* %3, align 4
  br label %237

86:                                               ; preds = %78
  %87 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %88 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %87, i32 0, i32 9
  %89 = call i32 @INIT_LIST_HEAD(i32* %88)
  %90 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %91 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %90, i32 0, i32 8
  %92 = call i32 @INIT_LIST_HEAD(i32* %91)
  %93 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %94 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %93, i32 0, i32 7
  %95 = call i32 @INIT_LIST_HEAD(i32* %94)
  %96 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %97 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %96, i32 0, i32 0
  store i32 20, i32* %97, align 8
  %98 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %99 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %98, i32 0, i32 6
  %100 = load i64, i64* @tty3270_update, align 8
  %101 = inttoptr i64 %100 to void (i64)*
  %102 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %103 = ptrtoint %struct.tty3270* %102 to i64
  %104 = call i32 @setup_timer(i32* %99, void (i64)* %101, i64 %103)
  %105 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %106 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %105, i32 0, i32 5
  %107 = load i64, i64* @tty3270_read_tasklet, align 8
  %108 = inttoptr i64 %107 to void (i64)*
  %109 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %110 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @tasklet_init(i32* %106, void (i64)* %108, i64 %111)
  %113 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %114 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %113, i32 0, i32 1
  %115 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %116 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @RAW3270_FIRSTMINOR, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @raw3270_add_view(%struct.TYPE_8__* %114, i32* @tty3270_fn, i64 %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %86
  %124 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %125 = call i32 @tty3270_free_view(%struct.tty3270* %124)
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %3, align 4
  br label %237

127:                                              ; preds = %86
  %128 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %129 = call i32 @tty3270_alloc_screen(%struct.tty3270* %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %134 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %133, i32 0, i32 1
  %135 = call i32 @raw3270_put_view(%struct.TYPE_8__* %134)
  %136 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %137 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %136, i32 0, i32 1
  %138 = call i32 @raw3270_del_view(%struct.TYPE_8__* %137)
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %3, align 4
  br label %237

140:                                              ; preds = %127
  %141 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %142 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %143 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %142, i32 0, i32 3
  store %struct.tty_struct* %141, %struct.tty_struct** %143, align 8
  %144 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %145 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %144, i32 0, i32 4
  store i64 0, i64* %145, align 8
  %146 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %147 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %148 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %147, i32 0, i32 3
  store %struct.tty3270* %146, %struct.tty3270** %148, align 8
  %149 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %150 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %152, 2
  %154 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %155 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  store i32 %153, i32* %156, align 8
  %157 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %158 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %162 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  store i32 %160, i32* %163, align 4
  %164 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %165 = call i32 @tty3270_create_prompt(%struct.tty3270* %164)
  %166 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %167 = call i32 @tty3270_create_status(%struct.tty3270* %166)
  %168 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %169 = call i32 @tty3270_update_status(%struct.tty3270* %168)
  store i32 0, i32* %7, align 4
  br label %170

170:                                              ; preds = %181, %140
  %171 = load i32, i32* %7, align 4
  %172 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %173 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = sub nsw i32 %175, 2
  %177 = icmp slt i32 %171, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %170
  %179 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %180 = call i32 @tty3270_blank_line(%struct.tty3270* %179)
  br label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %7, align 4
  br label %170

184:                                              ; preds = %170
  %185 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %186 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %187 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %186, i32 0, i32 2
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  store %struct.tty_struct* %185, %struct.tty_struct** %189, align 8
  %190 = load i32, i32* @tty3270_exit_tty, align 4
  %191 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %192 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %191, i32 0, i32 2
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* @K_INCRCONSOLE, align 4
  %197 = call i64 @KVAL(i32 %196)
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32 %190, i32* %198, align 4
  %199 = load i32, i32* @tty3270_scroll_backward, align 4
  %200 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %201 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %200, i32 0, i32 2
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* @K_SCROLLBACK, align 4
  %206 = call i64 @KVAL(i32 %205)
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  store i32 %199, i32* %207, align 4
  %208 = load i32, i32* @tty3270_scroll_forward, align 4
  %209 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %210 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %209, i32 0, i32 2
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* @K_SCROLLFORW, align 4
  %215 = call i64 @KVAL(i32 %214)
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 %208, i32* %216, align 4
  %217 = load i32, i32* @tty3270_rcl_backward, align 4
  %218 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %219 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %218, i32 0, i32 2
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* @K_CONS, align 4
  %224 = call i64 @KVAL(i32 %223)
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  store i32 %217, i32* %225, align 4
  %226 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %227 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %226, i32 0, i32 2
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %227, align 8
  %229 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %230 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @kbd_ascebc(%struct.TYPE_9__* %228, i32 %232)
  %234 = load %struct.tty3270*, %struct.tty3270** %6, align 8
  %235 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %234, i32 0, i32 1
  %236 = call i32 @raw3270_activate_view(%struct.TYPE_8__* %235)
  store i32 0, i32* %3, align 4
  br label %237

237:                                              ; preds = %184, %132, %123, %83, %75, %25, %13
  %238 = load i32, i32* %3, align 4
  ret i32 %238
}

declare dso_local i64 @raw3270_find_view(i32*, i64) #1

declare dso_local i64 @IS_ERR(%struct.tty3270*) #1

declare dso_local i32 @PTR_ERR(%struct.tty3270*) #1

declare dso_local %struct.tty3270* @tty3270_alloc_view(...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @setup_timer(i32*, void (i64)*, i64) #1

declare dso_local i32 @tasklet_init(i32*, void (i64)*, i64) #1

declare dso_local i32 @raw3270_add_view(%struct.TYPE_8__*, i32*, i64) #1

declare dso_local i32 @tty3270_free_view(%struct.tty3270*) #1

declare dso_local i32 @tty3270_alloc_screen(%struct.tty3270*) #1

declare dso_local i32 @raw3270_put_view(%struct.TYPE_8__*) #1

declare dso_local i32 @raw3270_del_view(%struct.TYPE_8__*) #1

declare dso_local i32 @tty3270_create_prompt(%struct.tty3270*) #1

declare dso_local i32 @tty3270_create_status(%struct.tty3270*) #1

declare dso_local i32 @tty3270_update_status(%struct.tty3270*) #1

declare dso_local i32 @tty3270_blank_line(%struct.tty3270*) #1

declare dso_local i64 @KVAL(i32) #1

declare dso_local i32 @kbd_ascebc(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @raw3270_activate_view(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
